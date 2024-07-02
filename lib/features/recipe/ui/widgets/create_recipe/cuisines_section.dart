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