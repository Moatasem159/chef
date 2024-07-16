import 'package:chef/core/router/routes.dart';
import 'package:chef/features/auth/ui/screens/login_screen.dart';
import 'package:chef/features/auth/ui/screens/onboarding_screen.dart';
import 'package:chef/features/auth/ui/screens/register_screen.dart';
import 'package:chef/features/recipe/ui/screens/create_recipe_screen.dart';
import 'package:chef/features/recipe/ui/screens/discover_screen.dart';
import 'package:flutter/material.dart';

part 'routes_animation/slide_from_left_to_right.dart';

part 'routes_animation/slide_from_down_to_up_with_fading.dart';

class AppRouter {
  final bool isOnboardingSkipped;
  final bool isUserLoggedIn;
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  AppRouter({this.isOnboardingSkipped = false, this.isUserLoggedIn = false});

  Route? router(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initialRoute:
        {
          if (isUserLoggedIn) {
            return MaterialPageRoute(
                settings: settings, builder: (context) => const DiscoverScreen());
          } else {
            if (isOnboardingSkipped) {
              return MaterialPageRoute(
                  settings: settings,
                  builder: (context) => const LoginScreen());
            } else {
              return MaterialPageRoute(
                  settings: settings,
                  builder: (context) => const OnboardingScreen());
            }
          }
        }
      case Routes.loginRoute:
        return SlideFromLeftToRight(
            settings: settings,
            pageBuilder: (context, animation, secondaryAnimation) =>
                const LoginScreen());
      case Routes.registerRoute:
        return SlideFromLeftToRight(
          settings: settings,
          pageBuilder: (context, animation, secondaryAnimation) =>
              const RegisterScreen(),
        );
      case Routes.discoverRoute:
        return SlideFromLeftToRight(
          settings: settings,
          pageBuilder: (context, animation, secondaryAnimation) =>
              const DiscoverScreen(),
        );
      case Routes.createRecipeRoute:
        return SlideFromDownToUpWithFading(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const CreateRecipeWithImageScreen(),
        );
      default:
        return null;
    }
  }
}