import 'dart:developer';

import 'package:chef/core/errors/error_handler.dart';
import 'package:chef/core/errors/firebase_exception_codes.dart';
import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/helpers/firebase_result.dart';
import 'package:chef/features/recipe/data/models/options_model.dart';
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

  CreateRecipeCubit(this._recipeRepository)
      : super(const CreateRecipeInitial());
  int currentIndex = 0;
  RecipeResponseModel ?recipe;
  final TextEditingController textController = TextEditingController();
  List<Widget> screens = [
    const CreateRecipeWithImageBody(),
    const RecipeBody(),
  ];
  List<XFile> images = [XFile("")];

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

  late List<OptionsModel> stableIngredients;

  getIngredients(BuildContext context) {
    stableIngredients = [
      OptionsModel(context.local.soil, false),
      OptionsModel(context.local.butter, false),
      OptionsModel(context.local.flour, false),
      OptionsModel(context.local.salt, false),
      OptionsModel(context.local.pepper, false),
      OptionsModel(context.local.sugar, false),
      OptionsModel(context.local.milk, false),
      OptionsModel(context.local.vinegar, false),
    ];
  }

  chooseStableIngredient(OptionsModel value) {
    emit(const ChooseStableIngredientLoadingState());
    stableIngredients
        .firstWhere((element) => element.name == value.name)
        .isSelected = !value.isSelected;
    emit(const ChooseStableIngredientSuccessState());
  }

  late List<OptionsModel> dietaryRestriction;

  getDietaryRestriction(BuildContext context) {
    dietaryRestriction = [
      OptionsModel(context.local.vegetarian, false),
      OptionsModel(context.local.dairyFree, false),
      OptionsModel(context.local.lowCarb, false),
      OptionsModel(context.local.wheatAllergy, false),
      OptionsModel(context.local.nutAllergy, false),
      OptionsModel(context.local.soyAllergy, false),
      OptionsModel(context.local.fishAllergy, false),
      OptionsModel(context.local.keto, false),
    ];
  }

  chooseDietaryRestriction(OptionsModel value) {
    emit(const ChooseDietaryRestrictionLoadingState());
    dietaryRestriction
        .firstWhere((element) => element.name == value.name)
        .isSelected = !value.isSelected;
    emit(const ChooseDietaryRestrictionSuccessState());
  }

  late List<OptionsModel> cuisines;

  getCuisines(BuildContext context) {
    cuisines = [
      OptionsModel(context.local.egyptian, false),
      OptionsModel(context.local.italian, false),
      OptionsModel(context.local.indian, false),
      OptionsModel(context.local.chinese, false),
      OptionsModel(context.local.french, false),
      OptionsModel(context.local.japanese, false),
      OptionsModel(context.local.american, false),
      OptionsModel(context.local.turkish, false),
    ];
  }

  chooseCuisines(OptionsModel value) {
    emit(const ChooseCuisinesLoadingState());
    cuisines.firstWhere((element) => element.name == value.name).isSelected =
        !value.isSelected;
    emit(const ChooseCuisinesSuccessState());
  }

  Future<void> generateRecipe() async {
    emit(const GenerateRecipeLoadingState());
    final FirebaseResult<RecipeResponseModel> response =
        await _recipeRepository.generateContent(prompt: _buildPrompt());
    response.when(
      success: (RecipeResponseModel recipeData) {
        log(recipeData.toString());
        recipe=recipeData;
        return emit(const GenerateRecipeSuccessState());
      },
      failure: (ErrorHandler errorHandler) =>
          emit(GenerateRecipeErrorState(errorHandler.code)),
    );
  }

  _buildPrompt() {
    List<XFile> files = [];
    files.addAll(images);
    files.removeAt(0);
    List<String> chosenStableIngredients = [];
    List<String> chosenDietaryRestriction = [];
    List<String> chosenCuisines = [];
    for (OptionsModel element in stableIngredients) {
      if (element.isSelected) {
        chosenStableIngredients.add(element.name);
      }
    }
    for (OptionsModel element in dietaryRestriction) {
      if (element.isSelected) {
        chosenDietaryRestriction.add(element.name);
      }
    }
    for (OptionsModel element in cuisines) {
      if (element.isSelected) {
        chosenCuisines.add(element.name);
      }
    }
    return PromptDataModel(
      textInput: mainPrompt(
          chosenStableIngredients, chosenDietaryRestriction, chosenCuisines),
      images: files,
      selectedBasicIngredients: chosenStableIngredients,
      selectedCuisines: chosenCuisines,
      selectedDietaryRestrictions: chosenDietaryRestriction,
      additionalTextInputs: [format],
    );
  }

  changePage(int value) {
    emit(const ChangePageLoadingState());
    currentIndex = value;
    emit(const ChangePageSuccessState());
  }

  resetPrompt() {
    emit(const ResetOptionsLoadingState());
    images = [XFile("")];
    textController.clear();
    for (OptionsModel element in stableIngredients) {
      element.isSelected = false;
    }
    for (OptionsModel element in dietaryRestriction) {
      element.isSelected = false;
    }
    for (OptionsModel element in cuisines) {
      element.isSelected = false;
    }
    emit(const ResetOptionsSuccessState());
  }

  String mainPrompt(
    List<String> chosenStableIngredients,
    List<String> chosenDietaryRestriction,
    List<String> chosenCuisines,
  ) {
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
if cuisines and allergens more than one word separate between them with ","
ingredients and instructions should be of type List<String>.
Make ingredients with quantities.
nutritionInformation should be of type Map<String, String>.
don't put trailing commas after the last elements in the lists.
in arabic recipe translate every field
don't write english words in arabic recipe
''';

  @override
  Future<void> close() {
    recipe=null;
    screens.clear();
    images.clear();
    stableIngredients.clear();
    dietaryRestriction.clear();
    cuisines.clear();
    textController.dispose();
    return super.close();
  }
}