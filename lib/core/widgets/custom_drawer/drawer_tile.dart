part of 'main_drawer.dart';

class _DrawerTile extends StatelessWidget {
  final DrawerItemModel item;
  final VoidCallback? onTap;

  const _DrawerTile({required this.item, required this.onTap});

  bool isSelected(BuildContext context) {
    if (context.routeName.name == "/" &&
        item.location == Routes.discoverRoute) {
      return true;
    } else if (item.location == context.routeName.name) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Material(
        borderRadius: BorderRadius.circular(25),
        color: isSelected(context)
            ? context.theme.listTileTheme.selectedTileColor
            : Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(25),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 7),
            margin: const EdgeInsets.symmetric(vertical: 9, horizontal: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              children: [
                Icon(item.icon,
                    color: isSelected(context) ? Colors.white : Colors.grey),
                horizontalSpace(15),
                Text(
                  item.title,
                  style: AppTextStyles.style16Normal.copyWith(
                      color: isSelected(context) ? Colors.white : Colors.grey),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}