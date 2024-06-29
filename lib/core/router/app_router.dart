import 'package:chef/core/router/routes.dart';
import 'package:chef/features/auth/ui/screens/login_screen.dart';
import 'package:chef/features/auth/ui/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  final bool isOnboardingSkipped;
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  AppRouter({this.isOnboardingSkipped = false});

  Route? router(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initialRoute:
        {
          if (isOnboardingSkipped) {
            return MaterialPageRoute(builder: (context) => const LoginScreen());
          } else {
            return MaterialPageRoute(
                builder: (context) => const OnboardingScreen());
          }
        }
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      default:
        return null;
    }
  }
}