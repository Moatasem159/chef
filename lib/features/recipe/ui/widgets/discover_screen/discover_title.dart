part of 'discover_screen_body.dart';

class _DiscoverTitle extends StatelessWidget {
  const _DiscoverTitle();

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.locale.hello(loggedInUser!.name!),
                  style: AppTextStyles.style12SemiBold.copyWith(fontSize: 12),
                ),
                Text(
                  context.locale.recipeSubtitle,
                  style:
                      AppTextStyles.style10Normal.copyWith(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}