part of '../screens/recipe_screen.dart';

class _RecipeWithPicCard extends StatelessWidget {
  const _RecipeWithPicCard();

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            width: 360.w,
            height: 170.h,
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: context.theme.primaryColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(AppAssets.geminiIcon, width: 20, height: 20),
                verticalSpace(10),
                SizedBox(
                  width: 160,
                  child: Text.rich(
                    TextSpan(
                        text: context.local.recipeDialogPart1,
                        style: AppTextStyles.style14Normal
                            .copyWith(color: Colors.white),
                        children: [
                          TextSpan(
                            text: context.local.ingredients,
                            style: AppTextStyles.style14SemiBold,
                          ),
                          TextSpan(
                            text: context.local.recipeDialogPart2,
                            style: AppTextStyles.style14Normal,
                          )
                        ]),
                  ),
                ),
                verticalSpace(10),
                MainButtonWithText(
                  foregroundColor: Colors.white,
                  border: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  backgroundColor: context.theme.colorScheme.secondary,
                  onTap: () {
                    context.pushNamed(Routes.createRecipeRoute);
                  },
                  title: context.local.justTakePic,
                )
              ],
            ),
          ),
          Positioned(
            right: 0.w,
            bottom: 10.h,
            child: Image(
              image: AssetImage(AppAssets.chefImage),
              height: 210.h,
              width: 210.w,
            ),
          ),
        ],
      ),
    );
  }
}