part of '../recipe_body.dart';
class _RecipeDescription extends StatelessWidget {
  final RecipeResponseModel recipe;

  const _RecipeDescription({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        recipe.getRecipe(context).description,
        style: AppTextStyles.style14Normal,
      ),
    );
  }
}