import 'package:chef/core/extension/context_extensions.dart';
import 'package:flutter/cupertino.dart';

abstract class AppAnimatedIcons {
  static String recipeLoading(BuildContext context) => context.isDark
      ? "assets/images/icons/animations/food_loading_dark_mode.json"
      : "assets/images/icons/animations/food_loading_light_mode.json";

  static String done(BuildContext context) => context.isDark
      ? "assets/images/icons/animations/done_dark_mode.json"
      : "assets/images/icons/animations/done_light_mode.json";
  static String error(BuildContext context) => context.isDark
      ? "assets/images/icons/animations/error_dark_mode.json"
      : "assets/images/icons/animations/error_light_mode.json";
  static String emptyRecipe(BuildContext context) => context.isDark
      ? "assets/images/icons/animations/empty_recipe_dark_mode.json"
      : "assets/images/icons/animations/empty_recipe_light_mode.json";
}