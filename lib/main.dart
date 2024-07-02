import 'package:chef/app.dart';
import 'package:chef/core/di/dependency_injection.dart';
import 'package:chef/core/helpers/constants.dart';
import 'package:chef/core/helpers/shared_preferences_helper.dart';
import 'package:chef/core/router/app_router.dart';
import 'package:chef/features/auth/data/models/firebase_user.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

late FirebaseUserModel? loggedInUser;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  loggedInUser = getIt<Box<FirebaseUserModel>>().get(AppConstants.loggedInUser);
  final bool isOnboardingSkipped = await SharedPrefHelper.getBool(AppConstants.skippedOnboarding);
  final bool isUserLoggedIn = loggedInUser == null ? false : true;
  runApp(
    ChefBot(
      appRouter: AppRouter(
        isOnboardingSkipped: isOnboardingSkipped,
        isUserLoggedIn: isUserLoggedIn,
      ),
    ),
  );
}