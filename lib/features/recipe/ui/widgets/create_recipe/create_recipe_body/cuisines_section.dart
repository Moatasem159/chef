part of 'create_recipe_with_image_body.dart';

class _CuisinesSection extends StatelessWidget {
  const _CuisinesSection();

  @override
  Widget build(BuildContext context) {
    return _BackgroundContainer(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              context.local.modeFor,
              style: AppTextStyles.style16SemiBold.copyWith(
                color: Colors.grey[600],
                fontSize: 14.sp,
              ),
            ),
          ),
          verticalSpace(5),
          const _CuisineList(),
        ],
      ),
    );
  }
}
class _CuisineList extends StatelessWidget {
  const _CuisineList();
  @override
  Widget build(BuildContext context) {
    final List<String> dietaryRestriction = [
      context.local.italian,
      context.local.indian,
      context.local.egyptian,
      context.local.chinese,
      context.local.french,
      context.local.japanese,
      context.local.american,
      context.local.turkish,
    ];
    return Wrap(
      children: List.generate(
        dietaryRestriction.length,
        (index) => _OptionContainer(
          title: dietaryRestriction[index],
          changed: ((bool, String) value) {
            context.read<CreateRecipeCubit>().chooseCuisines(value);
          },
        ),
      ),
    );
  }
}