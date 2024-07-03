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
    final List<String> dietaryRestriction = [
      context.local.vegetarian,
      context.local.dairyFree,
      context.local.lowCarb,
      context.local.wheatAllergy,
      context.local.nutAllergy,
      context.local.soyAllergy,
      context.local.fishAllergy,
      context.local.keto,
    ];
    return Wrap(
      children: List.generate(
        dietaryRestriction.length,
        (index) => _OptionContainer(
          title: dietaryRestriction[index],
          changed: ((bool, String) value) {
            context.read<CreateRecipeCubit>().chooseDietaryRestriction(value);
          },
        ),
      ),
    );
  }
}