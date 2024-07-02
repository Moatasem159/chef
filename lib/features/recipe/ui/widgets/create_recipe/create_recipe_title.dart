part of 'create_recipe_with_image_body.dart';
class _CreateRecipeTitle extends StatelessWidget {
  const _CreateRecipeTitle();
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
        child: Text(context.local.createARecipe,style: AppTextStyles.style16SemiBold.copyWith(
            color: Colors.grey
        ),),
      ),
    );
  }
}