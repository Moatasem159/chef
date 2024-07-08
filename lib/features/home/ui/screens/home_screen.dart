
import 'package:chef/core/themes/app_theme.dart';
import 'package:chef/features/gallery/ui/screens/gallery_screen.dart';
import 'package:chef/features/home/ui/widgets/main_bottom_nav_bar.dart';
import 'package:chef/features/recipe/ui/screens/recipes_screen.dart';
import 'package:chef/features/user/ui/screens/account_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int _currentIndex;
  late final List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
    _screens = [
      const RecipesScreen(),
      const GalleryScreen(),
      const AccountScreen(),
    ];
  }

  @override
  void dispose() {
    _screens.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppTheme.systemUiOverlayStyle(context),
      child: SafeArea(
        child: Scaffold(
          body: _screens.elementAt(_currentIndex),
          bottomNavigationBar: MainBottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
          ),
        ),
      ),
    );
  }
}