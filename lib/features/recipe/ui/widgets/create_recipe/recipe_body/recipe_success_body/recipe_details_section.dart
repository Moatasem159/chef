part of '../recipe_body.dart';

class _RecipeDetailsSection extends StatelessWidget {
  final RecipeResponseModel recipe;

  const _RecipeDetailsSection({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.primaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _AllergensAndServings(recipe: recipe),
          _NutritionPerServing(recipe: recipe),
        ],
      ),
    );
  }
}