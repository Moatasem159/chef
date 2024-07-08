import 'package:chef/core/errors/error_handler.dart';
import 'package:chef/core/errors/firebase_exception_codes.dart';
import 'package:chef/core/helpers/firebase_result.dart';
import 'package:chef/features/recipe/data/models/prompt_data_model.dart';
import 'package:chef/features/recipe/data/models/recipe_response_model.dart';
import 'package:chef/features/recipe/data/repository/recipe_repository.dart';
import 'package:chef/features/recipe/ui/widgets/create_recipe/recipe_body/recipe_body.dart';
import 'package:chef/features/recipe/ui/widgets/create_recipe/create_recipe_body/create_recipe_with_image_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
part 'create_recipe_state.dart';
class CreateRecipeCubit extends Cubit<CreateRecipeStates> {
  final RecipeRepository _recipeRepository;

  CreateRecipeCubit(this._recipeRepository) : super(const CreateRecipeInitial());
  List<XFile> images = [XFile("")];
  List<String> chosenStableIngredients = [];
  List<String> chosenDietaryRestriction = [];
  List<String> chosenCuisines = [];
  int currentIndex=0;
  final TextEditingController textController = TextEditingController();

  List<Widget> screens=[
    const CreateRecipeWithImageBody(),
    const RecipeBody(),
  ];

  picImage(ImageSource source) async {
    emit(const PickImageLoadingState());
    ImagePicker picker = ImagePicker();
    XFile? xFile = await picker.pickImage(source: source);
    if (xFile != null) {
      images.add(xFile);
    }
    emit(const PickImageSuccessState());
  }

  removeImage(XFile file) {
    emit(const RemoveImageLoadingState());
    images.remove(file);
    emit(const RemoveImageSuccessState());
  }

  chooseStableIngredient((bool, String) value) {
    if (value.$1) {
      chosenStableIngredients.add(value.$2);
    } else {
      chosenStableIngredients.remove(value.$2);
    }
  }

  chooseDietaryRestriction((bool, String) value) {
    if (value.$1) {
      chosenDietaryRestriction.add(value.$2);
    } else {
      chosenDietaryRestriction.remove(value.$2);
    }
  }

  chooseCuisines((bool, String) value) {
    if (value.$1) {
      chosenCuisines.add(value.$2);
    } else {
      chosenCuisines.remove(value.$2);
    }
  }

  Future<void> generateRecipe() async {
    emit(const GenerateRecipeLoadingState());
    final FirebaseResult<RecipeResponseModel> response = await _recipeRepository.generateContent(prompt: _buildPrompt());
    response.when(
      success: (RecipeResponseModel data) => emit(GenerateRecipeSuccessState(data)),
      failure: (ErrorHandler errorHandler) => emit(GenerateRecipeErrorState(errorHandler.code)),
    );
  }

  _buildPrompt() {
    List<XFile> files = [];
    files.addAll(images);
    files.removeAt(0);
    return PromptDataModel(
      textInput: mainPrompt,
      images: files,
      selectedBasicIngredients: chosenStableIngredients,
      selectedCuisines: chosenCuisines,
      selectedDietaryRestrictions: chosenDietaryRestriction,
      additionalTextInputs: [format],
    );
  }

  changePage(int value){
    emit(const ChangePageLoadingState());
    currentIndex=value;
    emit(const ChangePageSuccessState());
  }


  String get mainPrompt {
    return '''
Recommend a recipe for me based on the provided image/s.
The recipe should only contain real, edible ingredients.
speak to male
IF THERE ARE NO IMAGES ATTACHED RESPOND EXACTLY WITH:${ExceptionCodes.noImageError}
IF THE IMAGES DOES NOT CONTAIN FOOD ITEMS RESPOND EXACTLY WITH:${ExceptionCodes.imageError}
Adhere to food safety and handling best practices like ensuring that poultry is fully cooked.
I'm in the mood for the following types of cuisine: $chosenCuisines,
I have the following dietary restrictions: $chosenDietaryRestriction
Optionally also include the following ingredients: $chosenStableIngredients
Do not repeat any ingredients.

After providing the recipe, add an descriptions that creatively explains why the recipe is good based on only the ingredients used in the recipe.
List out any ingredients that are potential allergens.
Provide a summary of how many people the recipe will serve and the the nutritional information per serving.

${textController.text.isNotEmpty ? textController.text : ''} ''';
  }

  final String format = '''
YOU MUST RETURN THE RECIPE AS VALID JSON USING THE FOLLOWING STRUCTURE:
{
  "id": \$uniqueId,
  "english_recipe":{
  "title": \$recipeTitle,
  "ingredients": \$ingredients,
  "description": \$description,
  "instructions": \$instructions,
  "cuisine": \$cuisineType,
  "allergens": \$allergens,
  "servings": \$servings
 },
  "arabic_recipe":{
  "title": \$recipeTitle,
  "ingredients": \$ingredients,
  "description": \$description,
  "instructions": \$instructions,
  "cuisine": \$cuisineType,
  "allergens": \$allergens,
  "servings": \$servings
},
 "nutrition_information": {
    "calories": "\$calories",
    "fat": "\$fat",
    "carbohydrates": "\$carbohydrates",
    "protein": "\$protein"
  }
}
  
uniqueId should be unique and of type String. 
title, description, cuisine, allergens, and servings should be of String type. 
ingredients and instructions should be of type List<String>.
nutritionInformation should be of type Map<String, String>.
don't put trailing commas after the last elements in the lists
in arabic recipe translate every field
don't write english words in arabic recipe
''';
}