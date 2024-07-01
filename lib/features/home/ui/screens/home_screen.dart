import 'package:chef/core/themes/app_theme.dart';
import 'package:chef/features/gallery/ui/screens/gallery_screen.dart';
import 'package:chef/features/home/ui/widgets/main_bottom_nav_bar.dart';
import 'package:chef/features/recipe/ui/screens/recipe_screen.dart';
import 'package:chef/features/user/ui/screens/account_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final List<Widget> screens;
  late int currentIndex;
  @override
  void initState() {
    super.initState();
    currentIndex = 0;
    screens = [
      const RecipeScreen(),
      const GalleryScreen(),
      const AccountScreen(),
    ];
  }

  @override
  void dispose() {
    screens.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppTheme.systemUiOverlayStyle(context),
      child:  SafeArea(
        child: Scaffold(
          bottomNavigationBar: MainBottomNavbar(
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
          ),
        ),
      ),
    );
  }
}