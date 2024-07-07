part of 'create_recipe_cubit.dart';
sealed class CreateRecipeStates {
  const CreateRecipeStates();
}

final class CreateRecipeInitial extends CreateRecipeStates {
  const CreateRecipeInitial();
}
final class PickImageLoadingState extends CreateRecipeStates {
  const PickImageLoadingState();
}
final class PickImageSuccessState extends CreateRecipeStates {
  const PickImageSuccessState();
}
final class RemoveImageLoadingState extends CreateRecipeStates {
  const RemoveImageLoadingState();
}
final class RemoveImageSuccessState extends CreateRecipeStates {
  const RemoveImageSuccessState();
}
final class GenerateRecipeLoadingState extends CreateRecipeStates {
  const GenerateRecipeLoadingState();
}
final class GenerateRecipeSuccessState extends CreateRecipeStates {
  final RecipeResponseModel recipe;
  const GenerateRecipeSuccessState(this.recipe);
}
final class GenerateRecipeErrorState extends CreateRecipeStates {
  final String message;
  const GenerateRecipeErrorState(this.message);
}