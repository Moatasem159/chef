import 'package:chef/features/recipe/ui/widgets/create_recipe/create_recipe_app_bar.dart';
import 'package:chef/features/recipe/ui/widgets/create_recipe/create_recipe_bottom_nav_bar.dart';
import 'package:chef/features/recipe/ui/widgets/create_recipe/create_recipe_screens.dart';
import 'package:flutter/material.dart';
class CreateRecipeScreenBody extends StatelessWidget {
  const CreateRecipeScreenBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: CreateRecipeAppbar(),
        body: CreateRecipeScreens(),
        bottomNavigationBar: CreateRecipeBottomNavBar(),
      ),
    );
  }
}