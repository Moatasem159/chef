part of 'create_recipe_with_image_body.dart';

class _StableIngredientsSection extends StatelessWidget {
  const _StableIngredientsSection();

  @override
  Widget build(BuildContext context) {
    return _BackgroundContainer(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              context.local.haveStableIngredient,
              style: AppTextStyles.style16SemiBold.copyWith(
                color: Colors.grey[600],
                fontSize: 14.sp,
              ),
            ),
          ),
          verticalSpace(5),
          const _StableIngredientsList(),
        ],
      ),
    );
  }
}

class _StableIngredientsList extends StatelessWidget {
  const _StableIngredientsList();

  @override
  Widget build(BuildContext context) {
    final List<String> ingredients = [
      context.local.soil,
      context.local.butter,
      context.local.flour,
      context.local.salt,
      context.local.pepper,
      context.local.sugar,
      context.local.milk,
      context.local.vinegar,
    ];
    return Wrap(
      children: List.generate(
        ingredients.length,
        (index) => _OptionContainer(
          title: ingredients[index],
          changed: ((bool, String) value) {
            context.read<CreateRecipeCubit>().chooseStableIngredient(value);
          },
        ),
      ),
    );
  }
}