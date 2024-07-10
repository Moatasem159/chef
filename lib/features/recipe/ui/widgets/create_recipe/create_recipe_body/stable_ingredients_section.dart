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
              context.locale.haveStableIngredient,
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
    return BlocBuilder<CreateRecipeCubit, CreateRecipeStates>(
      buildWhen: (previous, current) =>
          current is ChooseStableIngredientLoadingState ||
          current is ChooseStableIngredientSuccessState ||
          current is ResetOptionsLoadingState ||
          current is ResetOptionsSuccessState,
      builder: (context, state) {
        return Wrap(
          children: List.generate(
            context.read<CreateRecipeCubit>().stableIngredients.length,
            (index) => _OptionContainer(
              option:
                  context.read<CreateRecipeCubit>().stableIngredients[index],
              onTap: () {
                context.read<CreateRecipeCubit>().chooseStableIngredient(
                    context.read<CreateRecipeCubit>().stableIngredients[index]);
              },
            ),
          ),
        );
      },
    );
  }
}