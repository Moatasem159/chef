part of 'recipe_body.dart';

class _RecipeEmptyBody extends StatelessWidget {
  const _RecipeEmptyBody();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomLottie(
            width: 300.w,
            height: 300.h,
            icon: AppAnimatedIcons.emptyRecipe(context),
          ),
          Text(
            context.locale.emptyRecipeMsg,
            style: AppTextStyles.style16SemiBold,
          ),
        ],
      ),
    );
  }
}