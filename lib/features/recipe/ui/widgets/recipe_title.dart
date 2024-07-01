part of '../screens/recipe_screen.dart';
class _RecipeTitle extends StatelessWidget {
  const _RecipeTitle();
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(context.local.hello(loggedInUser!.name!),
                  style: AppTextStyles.style16SemiBold.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                  ),
                ),
                verticalSpace(4),
                Text(
                  context.local.recipeSubtitle,
                  style: AppTextStyles.style16Normal.copyWith(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w300
                  ),
                ),
              ],
            ),
            //TODO: add app icon
          ],
        ),
      ),
    );
  }
}