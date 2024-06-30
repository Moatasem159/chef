import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/themes/app_colors.dart';
import 'package:chef/core/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AuthScaffold extends StatelessWidget {
  final Widget body;

  const AuthScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppTheme.systemUiOverlayStyle(context).copyWith(
        statusBarColor: context.isDark
            ? AppColors.primaryDarkColor
            : AppColors.primaryLightColor,
        statusBarIconBrightness: Brightness.light,
      ),
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: body,
        ),
      ),
    );
  }
}