part of '../../screens/discover_screen.dart';
class _DiscoverTitle extends StatelessWidget {
  const _DiscoverTitle();
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15.w),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(context.local.hello(loggedInUser!.name!),
                  style: AppTextStyles.style14SemiBold,
                ),
                verticalSpace(4),
                Text(
                  context.local.recipeSubtitle,
                  style: AppTextStyles.style14Normal.copyWith(
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