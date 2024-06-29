import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/themes/app_colors.dart';
import 'package:chef/core/themes/app_theme.dart';
import 'package:chef/features/auth/ui/widgets/onboarding_widgets/onboarding_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppTheme.systemUiOverlayStyle(context).copyWith(
        statusBarColor: context.isDark
            ? AppColors.primaryDarkColor
            : AppColors.primaryLightColor,
        statusBarIconBrightness: Brightness.light,
      ),
      child: const SafeArea(
        child: Scaffold(
          body: OnboardingBody(),
        ),
      ),
    );
  }
}