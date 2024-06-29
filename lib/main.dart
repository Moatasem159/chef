import 'package:chef/app.dart';
import 'package:chef/core/helpers/constants.dart';
import 'package:chef/core/helpers/shared_preferences_helper.dart';
import 'package:chef/core/router/app_router.dart';
import 'package:flutter/material.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final bool isOnboardingSkipped =await SharedPrefHelper.getBool(AppConstants.skippedOnboarding);
  runApp(
    ChefBot(
      appRouter: AppRouter(isOnboardingSkipped: isOnboardingSkipped),
    ),
  );
}