part of 'create_recipe_with_image_body.dart';
class _IngredientsSection extends StatelessWidget {
  const _IngredientsSection();
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey, width: 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                context.local.haveTheseIngredients,
                style: AppTextStyles.style16SemiBold
                    .copyWith(color: Colors.grey[600]),
              ),
            ),
            verticalSpace(5),
            const _ImageContainer(),
          ],
        ),
      ),
    );
  }
}