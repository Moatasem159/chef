part of '../recipe_body.dart';

class _AllergensAndServings extends StatelessWidget {
  final RecipeResponseModel recipe;

  const _AllergensAndServings({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          recipe.getRecipe(context).title,
          style: AppTextStyles.style18SemiBold.copyWith(
            color: Colors.white,
          ),
        ),
        verticalSpace(10),
        Divider(
          height: 2,
          thickness: 1,
          color: context.theme.scaffoldBackgroundColor,
        ),
        verticalSpace(10),
        _RecipeDetailsWidget(
          title: context.local.allergens,
          value: recipe.getRecipe(context).allergens,
        ),
        verticalSpace(10),
        _RecipeDetailsWidget(
          title: context.local.cuisines,
          value: recipe.getRecipe(context).cuisine,
        ),
        verticalSpace(10),
        _RecipeDetailsWidget(
          title: context.local.servings,
          value: recipe.getRecipe(context).servings,
        ),
        verticalSpace(10),
      ],
    );
  }
}

class _RecipeDetailsWidget extends StatelessWidget {
  final String title;
  final String value;

  const _RecipeDetailsWidget({
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppTextStyles.style16SemiBold.copyWith(
            color: Colors.white,
          ),
        ),
        const Spacer(),
        Text(
          value,
          style: AppTextStyles.style14Normal.copyWith(
            color:  Colors.white
          ),
        ),
      ],
    );
  }
}