part of 'main_drawer.dart';

class _DrawerTilesList extends StatelessWidget {
  const _DrawerTilesList();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _DrawerTile(
          item: DrawerItemModel(
            title: context.locale.discover,
            icon: Icons.explore_outlined,
            location: Routes.discoverRoute,
          ),
          onTap: () {
            if (context.routeName.name != Routes.discoverRoute) {
              Scaffold.of(context).closeDrawer();
              context.pushReplacementNamed(Routes.discoverRoute);
            } else {
              Scaffold.of(context).closeDrawer();
            }
          },
        ),
        _DrawerTile(
          item: DrawerItemModel(
            title: context.locale.account,
            icon: Icons.account_circle_outlined,
            location: Routes.accountRoute,
          ),
          onTap: () {
            if (context.routeName.name!= Routes.accountRoute) {
              Scaffold.of(context).closeDrawer();
              context.pushReplacementNamed(Routes.accountRoute);
            }
            else {
              Scaffold.of(context).closeDrawer();
            }
          },
        ),
       verticalSpace(30)
      ],
    );
  }
}