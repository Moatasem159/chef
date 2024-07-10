part of '../recipe_body.dart';

class _IngredientsSection extends StatelessWidget {
  final RecipeResponseModel recipe;

  const _IngredientsSection({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.local.ingredients(":"),
            style: AppTextStyles.style18SemiBold,
          ),
          verticalSpace(6),
          Column(
            children: List.generate(
              recipe.getRecipe(context).ingredients.length,
              (index) => _InfoWidget(
                value: recipe.getRecipe(context).ingredients[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}