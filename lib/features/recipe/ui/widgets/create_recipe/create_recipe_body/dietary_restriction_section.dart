part of 'create_recipe_with_image_body.dart';

class _DietaryRestrictionSection extends StatelessWidget {
  const _DietaryRestrictionSection();

  @override
  Widget build(BuildContext context) {
    return _BackgroundContainer(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              context.local.haveDietaryRestriction,
              style: AppTextStyles.style16SemiBold.copyWith(
                color: Colors.grey[600],
                fontSize: 14.sp,
              ),
            ),
          ),
          verticalSpace(5),
          const _DietaryRestrictionList(),
        ],
      ),
    );
  }
}

class _DietaryRestrictionList extends StatelessWidget {
  const _DietaryRestrictionList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateRecipeCubit, CreateRecipeStates>(
      buildWhen: (previous, current) =>
          current is ChooseDietaryRestrictionSuccessState ||
          current is ChooseDietaryRestrictionLoadingState ||
          current is ResetOptionsLoadingState ||
          current is ResetOptionsSuccessState,
      builder: (context, state) {
        return Wrap(
          children: List.generate(
            context.read<CreateRecipeCubit>().dietaryRestriction.length,
            (index) => _OptionContainer(
              option:
                  context.read<CreateRecipeCubit>().dietaryRestriction[index],
              onTap: () {
                context.read<CreateRecipeCubit>().chooseDietaryRestriction(
                    context
                        .read<CreateRecipeCubit>()
                        .dietaryRestriction[index]);
              },
            ),
          ),
        );
      },
    );
  }
}