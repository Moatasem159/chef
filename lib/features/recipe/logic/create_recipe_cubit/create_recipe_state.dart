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
  const GenerateRecipeSuccessState();
}

final class GenerateRecipeErrorState extends CreateRecipeStates {
  final String message;

  const GenerateRecipeErrorState(this.message);
}

final class ChangePageLoadingState extends CreateRecipeStates {
  const ChangePageLoadingState();
}

final class ChangePageSuccessState extends CreateRecipeStates {
  const ChangePageSuccessState();
}

final class ChooseStableIngredientLoadingState extends CreateRecipeStates {
  const ChooseStableIngredientLoadingState();
}

final class ChooseStableIngredientSuccessState extends CreateRecipeStates {
  const ChooseStableIngredientSuccessState();
}

final class ChooseDietaryRestrictionLoadingState extends CreateRecipeStates {
  const ChooseDietaryRestrictionLoadingState();
}

final class ChooseDietaryRestrictionSuccessState extends CreateRecipeStates {
  const ChooseDietaryRestrictionSuccessState();
}

final class ChooseCuisinesLoadingState extends CreateRecipeStates {
  const ChooseCuisinesLoadingState();
}

final class ChooseCuisinesSuccessState extends CreateRecipeStates {
  const ChooseCuisinesSuccessState();
}

final class ResetOptionsLoadingState extends CreateRecipeStates {
  const ResetOptionsLoadingState();
}

final class ResetOptionsSuccessState extends CreateRecipeStates {
  const ResetOptionsSuccessState();
}

final class SaveRecipeLoadingState extends CreateRecipeStates {
  const SaveRecipeLoadingState();
}

final class SaveRecipeSuccessState extends CreateRecipeStates {
  const SaveRecipeSuccessState();
}

final class RemoveRecipeSuccessState extends CreateRecipeStates {
  const RemoveRecipeSuccessState();
}

final class SaveRecipeErrorState extends CreateRecipeStates {
  final String message;

  const SaveRecipeErrorState(this.message);
}

final class RemoveRecipeErrorState extends CreateRecipeStates {
  final String message;

  const RemoveRecipeErrorState(this.message);
}