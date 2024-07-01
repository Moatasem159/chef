part of 'main_bottom_nav_bar.dart';

class MainBottomNavBarItem extends StatelessWidget {
  final IconData icon;
  final int index;
  final int currentIndex;
  final ValueChanged<int>? onTap;

  const MainBottomNavBarItem({
    super.key,
    required this.icon,
    required this.index,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call(index);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: context.screenWidth / 5,
        height: context.screenHeight * 0.055,
        decoration: BoxDecoration(
          color: currentIndex == index
              ? context.isDark
                  ? Colors.white10
                  : Colors.black12
              : Colors.transparent,
          border: Border(
            bottom: BorderSide(
              color: currentIndex == index
                  ? context.theme.primaryColor
                  : Colors.transparent,
              width: 2,
            ),
            top: BorderSide(
              color: currentIndex == index
                  ? context.theme.primaryColor
                  : Colors.transparent,
              width: 2,
            ),
          ),
        ),
        child: Icon(
          icon,
          color:
              currentIndex == index ? context.theme.primaryColor : Colors.grey,
        ),
      ),
    );
  }
}