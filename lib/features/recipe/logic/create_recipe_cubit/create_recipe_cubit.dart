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
  RecipeResponseModel? recipe;
  final TextEditingController textController = TextEditingController();
  List<Widget> screens = [
    const CreateRecipeWithImageBody(),
    const RecipeBody(),
  ];
  List<XFile> images = [XFile("")];

  bool saved = false;

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
      OptionsModel(context.locale.soil, false),
      OptionsModel(context.locale.butter, false),
      OptionsModel(context.locale.flour, false),
      OptionsModel(context.locale.salt, false),
      OptionsModel(context.locale.pepper, false),
      OptionsModel(context.locale.sugar, false),
      OptionsModel(context.locale.milk, false),
      OptionsModel(context.locale.vinegar, false),
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
      OptionsModel(context.locale.vegetarian, false),
      OptionsModel(context.locale.dairyFree, false),
      OptionsModel(context.locale.lowCarb, false),
      OptionsModel(context.locale.wheatAllergy, false),
      OptionsModel(context.locale.nutAllergy, false),
      OptionsModel(context.locale.soyAllergy, false),
      OptionsModel(context.locale.fishAllergy, false),
      OptionsModel(context.locale.keto, false),
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
      OptionsModel(context.locale.egyptian, false),
      OptionsModel(context.locale.italian, false),
      OptionsModel(context.locale.indian, false),
      OptionsModel(context.locale.chinese, false),
      OptionsModel(context.locale.french, false),
      OptionsModel(context.locale.japanese, false),
      OptionsModel(context.locale.american, false),
      OptionsModel(context.locale.turkish, false),
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
        saved=false;
        recipe = recipeData;
        return emit(const GenerateRecipeSuccessState());
      },
      failure: (ErrorHandler errorHandler) =>
          emit(GenerateRecipeErrorState(errorHandler.code)),
    );
  }

  saveRecipe() async {
    emit(const SaveRecipeLoadingState());
    if (saved) {
      saved = false;
      await _remove();
    } else {
      saved = true;
      await _save();
    }
  }

  Future<void> _save() async {
    final FirebaseResult<void> response =
        await _recipeRepository.saveRecipe(recipe!);
    response.when(
      success: (data) => emit(const SaveRecipeSuccessState()),
      failure: (errorHandler) {
        saved = true;
        return emit(SaveRecipeErrorState(errorHandler.code));
      },
    );
  }

  Future<void> _remove() async {
    final FirebaseResult<void> response =
        await _recipeRepository.removeRecipe(recipe!);
    response.when(
      success: (data) => emit(const RemoveRecipeSuccessState()),
      failure: (errorHandler) {
        saved = false;
        return emit(RemoveRecipeErrorState(errorHandler.code));
      },
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
DON'T PUT TRAILING COMMAS AFTER THE LAST ELEMENTS IN EVERY LISTS.  
in arabic recipe translate every field
don't write english words in arabic recipe
''';

  @override
  Future<void> close() {
    recipe = null;
    screens.clear();
    images.clear();
    stableIngredients.clear();
    dietaryRestriction.clear();
    cuisines.clear();
    textController.dispose();
    return super.close();
  }
}