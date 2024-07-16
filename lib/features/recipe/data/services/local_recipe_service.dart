import 'package:chef/features/recipe/data/models/recipe_response_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LocalRecipeService{
  final Box<RecipeResponseModel> _recipeBox;
  LocalRecipeService(this._recipeBox);
  Future<void> cacheRecipe(RecipeResponseModel recipe)async{
    await _recipeBox.put(recipe.id, recipe);
  }
  /// remove [recipe] from local database
  Future<void> removeRecipe(RecipeResponseModel recipe)async{
    await _recipeBox.delete(recipe.id);
  }
  /// clear all [recipes] from local database
  Future<void> clearAllRecipes()async{
    await _recipeBox.clear();
  }
}