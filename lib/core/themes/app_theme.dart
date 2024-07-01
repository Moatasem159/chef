import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  static final InputBorder _textFormFieldBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.white));
  static final InputBorder _textFormFieldErrorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.red));
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldLightBackground,
    primaryColor: AppColors.primaryLightColor,
    fontFamily: GoogleFonts.poppins().fontFamily,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryLightColor,
      onPrimary: AppColors.secondaryLightColor,
      secondary: AppColors.secondaryLightColor,
      onSecondary: AppColors.thirdLightColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryLightColor,
        foregroundColor: AppColors.thirdLightColor,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        textStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: AppColors.primaryLightColor,
        padding: const EdgeInsets.all(4),
        minimumSize: const Size(30, 30),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      filled: true,
      isCollapsed: true,
      errorStyle: GoogleFonts.poppins(color: Colors.white),
      enabledBorder: _textFormFieldBorder,
      focusedBorder: _textFormFieldBorder,
      errorBorder: _textFormFieldErrorBorder,
      focusedErrorBorder: _textFormFieldErrorBorder,
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      fillColor: Colors.grey.withOpacity(0.3),
    ),
    checkboxTheme: CheckboxThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        elevation: 5,
        textStyle: GoogleFonts.poppins(decoration: TextDecoration.underline),
      ),
    ),
    iconTheme: const IconThemeData(
      color: AppColors.primaryLightColor,
    ),
    snackBarTheme: SnackBarThemeData(
      elevation: 10,
      backgroundColor: AppColors.scaffoldLightBackground,
      contentTextStyle: GoogleFonts.poppins(
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    ),
    appBarTheme: AppBarTheme(
      elevation: 7,
      titleSpacing: 5,
      backgroundColor: AppColors.primaryLightColor,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      titleTextStyle: GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
      ),
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldDarkBackground,
    primaryColor: AppColors.primaryDarkColor,
    fontFamily: GoogleFonts.poppins().fontFamily,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryDarkColor,
      secondary: AppColors.secondaryDarkColor,
      onPrimary: AppColors.secondaryDarkColor,
      onSecondary: AppColors.thirdDarkColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryDarkColor,
        foregroundColor: AppColors.thirdDarkColor,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        textStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: AppColors.primaryDarkColor,
        padding: const EdgeInsets.all(4),
        minimumSize: const Size(30, 30),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      filled: true,
      isCollapsed: true,
      errorStyle: GoogleFonts.poppins(color: Colors.white),
      enabledBorder: _textFormFieldBorder,
      focusedBorder: _textFormFieldBorder,
      errorBorder: _textFormFieldErrorBorder,
      focusedErrorBorder: _textFormFieldErrorBorder,
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      fillColor: Colors.grey.withOpacity(0.3),
    ),
    checkboxTheme: CheckboxThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        elevation: 5,
        textStyle: GoogleFonts.poppins(decoration: TextDecoration.underline),
      ),
    ),
    iconTheme: const IconThemeData(
      color: AppColors.primaryDarkColor,
    ),
    snackBarTheme: SnackBarThemeData(
      elevation: 10,
      backgroundColor: AppColors.scaffoldDarkBackground,
      contentTextStyle: GoogleFonts.poppins(
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
    ),
    appBarTheme: AppBarTheme(
      elevation: 7,
      titleSpacing: 5,
      backgroundColor: AppColors.primaryDarkColor,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      titleTextStyle: GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
      ),
    ),
  );

  static SystemUiOverlayStyle systemUiOverlayStyle(BuildContext context) =>
      context.isDark ? _darkSystemUiOverlayStyle : _whiteSystemUiOverlayStyle;
  static final SystemUiOverlayStyle _whiteSystemUiOverlayStyle =
      SystemUiOverlayStyle.light.copyWith(
    statusBarColor: AppColors.scaffoldLightBackground,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: AppColors.scaffoldLightBackground,
  );
  static final SystemUiOverlayStyle _darkSystemUiOverlayStyle =
      SystemUiOverlayStyle.dark.copyWith(
    statusBarColor: AppColors.scaffoldDarkBackground,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarColor: AppColors.scaffoldDarkBackground,
  );
}