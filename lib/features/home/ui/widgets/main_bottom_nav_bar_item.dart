part of 'main_bottom_nav_bar.dart';

class _MainBottomNavigationBarIcon extends StatelessWidget {
  final IconData icon;
  final int currentIndex;
  final int iconIndex;

  const _MainBottomNavigationBarIcon({
    required this.currentIndex,
    required this.icon,
    required this.iconIndex,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          color: currentIndex == iconIndex
              ? context.theme.colorScheme.secondary.withOpacity(0.3)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(15)),
      child: AnimatedPadding(
        duration: const Duration(milliseconds: 800),
        curve: Curves.fastLinearToSlowEaseIn,
        padding: currentIndex == iconIndex
            ? const EdgeInsets.symmetric(horizontal: 20)
            : EdgeInsets.zero,
        child: Container(
            margin: const EdgeInsets.symmetric(vertical: 4), child: Icon(icon)),
      ),
    );
  }
}