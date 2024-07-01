import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/themes/app_colors.dart';
import 'package:chef/core/themes/app_theme.dart';
import 'package:chef/features/recipe/ui/widgets/create_recipe/create_recipe_with_image_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreateRecipeWithImageScreen extends StatelessWidget {
  const CreateRecipeWithImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppTheme.systemUiOverlayStyle(context).copyWith(
        statusBarColor: context.isDark?AppColors.primaryDarkColor:AppColors.primaryLightColor,
        systemNavigationBarColor: context.isDark?AppColors.primaryDarkColor:AppColors.primaryLightColor,
        statusBarIconBrightness: Brightness.light,
      ),
      child: const SafeArea(
        child: Scaffold(
          body: CreateRecipeWithImageBody(),
        ),
      ),
    );
  }
}