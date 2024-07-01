import 'package:chef/core/extension/context_extensions.dart';
import 'package:flutter/material.dart';
part 'main_bottom_nav_bar_item.dart';
class MainBottomNavbar extends StatelessWidget {
  final ValueChanged<int>? onTap;
  final int currentIndex;
  const MainBottomNavbar({super.key,required this.currentIndex, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight*0.055,
      color: context.theme.scaffoldBackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MainBottomNavBarItem(
            onTap: onTap,
            currentIndex:currentIndex,
            index: 0,
            icon:Icons.explore_rounded
          ),
          MainBottomNavBarItem(
            onTap: onTap,
            currentIndex: currentIndex,
            index: 1,
            icon: Icons.fastfood_outlined,
          ),
          MainBottomNavBarItem(
            onTap: onTap,
            currentIndex: currentIndex,
            index: 2,
            icon: Icons.account_circle_rounded,
          ),
        ],
      ),
    );
  }
}