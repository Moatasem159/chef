import 'package:chef/core/router/routes.dart';
import 'package:chef/features/auth/ui/screens/login_screen.dart';
import 'package:chef/features/auth/ui/screens/onboarding_screen.dart';
import 'package:chef/features/auth/ui/screens/register_screen.dart';
import 'package:flutter/material.dart';

part 'slide_from_left_to_right.dart';

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
        return SlideFromLeftToRight(pageBuilder: (context, animation,
            secondaryAnimation) => const LoginScreen());
      case Routes.registerRoute:
        return SlideFromLeftToRight(pageBuilder: (context, animation,
            secondaryAnimation) => const RegisterScreen());
      default:
        return null;
    }
  }
}