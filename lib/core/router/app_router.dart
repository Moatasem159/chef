import 'package:chef/core/router/routes.dart';
import 'package:chef/features/onboarding/ui/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Route? router(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
            builder: (context) => const OnboardingScreen());
      default:
        return null;
    }
  }
}