import 'package:chef/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static final ThemeData lightTheme = ThemeData(
      primaryColor: AppColors.primaryLightColor,
      scaffoldBackgroundColor: AppColors.white);
  static final ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.primaryDarkColor,
    scaffoldBackgroundColor: AppColors.black,
  );
}