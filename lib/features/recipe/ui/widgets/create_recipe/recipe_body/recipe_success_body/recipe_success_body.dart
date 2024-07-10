part of '../recipe_body.dart';

class _RecipeSuccessBody extends StatelessWidget {
  final RecipeResponseModel recipe;

  const _RecipeSuccessBody(this.recipe);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(overscroll: false),
      child: Scrollbar(
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            _RecipeDetailsSection(recipe: recipe),
            verticalSpace(12),
            _RecipeDescription(recipe: recipe),
            verticalSpace(24),
            _IngredientsSection(recipe: recipe),
            verticalSpace(24),
            _InstructionSection(recipe: recipe),
            verticalSpace(24),
          ],
        ),
      ),
    );
  }
}