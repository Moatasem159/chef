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