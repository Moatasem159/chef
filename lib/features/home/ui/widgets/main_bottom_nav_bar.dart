import 'package:chef/core/extension/context_extensions.dart';
import 'package:flutter/material.dart';
part 'main_bottom_nav_bar_item.dart';
class MainBottomNavigationBar extends StatelessWidget {
  final int currentIndex;

  final ValueChanged<int> onTap;

  const MainBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: context.theme.copyWith(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        splashFactory: InkSplash.splashFactory,
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: _MainBottomNavigationBarIcon(
              currentIndex: currentIndex,
              icon: Icons.explore_rounded,
              iconIndex: 0,
            ),
            label: context.local.discover,
          ),
          BottomNavigationBarItem(
            icon: _MainBottomNavigationBarIcon(
              currentIndex: currentIndex,
              icon: Icons.fastfood_outlined,
              iconIndex: 1,
            ),
            label: context.local.recipes,
          ),
          BottomNavigationBarItem(
            icon: _MainBottomNavigationBarIcon(
              currentIndex: currentIndex,
              icon: Icons.settings,
              iconIndex: 2,
            ),
            label: context.local.settings,
          ),
        ],
        onTap: onTap,
      ),
    );
  }
}