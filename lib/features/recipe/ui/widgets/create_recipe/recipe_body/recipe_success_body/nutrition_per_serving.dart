part of '../recipe_body.dart';

class _NutritionPerServing extends StatelessWidget {
  final RecipeResponseModel recipe;

  const _NutritionPerServing({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.local.nutritionPerServing,
          style: AppTextStyles.style16SemiBold.copyWith(
            color: Colors.white,
          ),
        ),
        verticalSpace(10),
        _NutritionWidget(
          title: context.local.calories,
          value: recipe.nutationInformation.calories,
        ),
        _NutritionWidget(
          title: context.local.fat,
          value: recipe.nutationInformation.fat,
        ),
        _NutritionWidget(
          title: context.local.carbohydrate,
          value: recipe.nutationInformation.carbohydrates,
        ),
        _NutritionWidget(
          title: context.local.protein,
          value: recipe.nutationInformation.protein,
        ),
      ],
    );
  }
}

class _NutritionWidget extends StatelessWidget {
  final String title;
  final String value;

  const _NutritionWidget({
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
      child: Row(
        children: [
          const Icon(
            Icons.radar_rounded,
            color: Colors.white,
            size: 18,
          ),
          horizontalSpace(5),
          Text(
            title,
            style: AppTextStyles.style16SemiBold.copyWith(
              color: Colors.white
            ),
          ),
          const Spacer(),
          Text(
            value,
            style: AppTextStyles.style14Normal.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}