import 'package:chef/core/helpers/constants.dart';
import 'package:chef/core/helpers/network_info.dart';
import 'package:chef/features/auth/data/models/firebase_user.dart';
import 'package:chef/features/auth/data/repository/firebase_auth_repository.dart';
import 'package:chef/features/auth/data/services/firebase_auth.dart';
import 'package:chef/features/auth/data/services/local_firebase_auth.dart';
import 'package:chef/features/recipe/data/models/nutrition_information_model.dart';
import 'package:chef/features/recipe/data/models/recipe_model.dart';
import 'package:chef/features/recipe/data/models/recipe_response_model.dart';
import 'package:chef/features/recipe/data/repository/recipe_repository.dart';
import 'package:chef/features/recipe/data/services/firebase_service.dart';
import 'package:chef/features/recipe/data/services/gemini_service.dart';
import 'package:chef/features/recipe/data/services/local_recipe_service.dart';
import 'package:chef/firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupGetIt() async {
  await Future.wait([
    Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    ),
    _initHive(),
    ScreenUtil.ensureScreenSize(),
  ]);
  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  getIt.registerLazySingleton<FirebaseFirestore>(
      () => FirebaseFirestore.instance);
  getIt.registerLazySingleton<FirebaseAuthClient>(
      () => FirebaseAuthClient(getIt(), getIt()));
  getIt.registerLazySingleton<LocalFirebaseAuth>(() => LocalFirebaseAuth(getIt()));
  getIt.registerLazySingleton<FirebaseAuthRepository>(
      () => FirebaseAuthRepository(getIt(), getIt()));
  getIt.registerLazySingleton<GeminiClient>(() => GeminiClient());
  getIt.registerLazySingleton<RecipeFirebaseService>(
      () => RecipeFirebaseService(getIt()));
  getIt.registerLazySingleton<LocalRecipeService>(() => LocalRecipeService(getIt()));
  getIt.registerLazySingleton<NetworkInfo>(
      () => NetworkInfo(InternetConnectionChecker()));
  getIt.registerLazySingleton<RecipeRepository>(
    () => RecipeRepository(
      getIt(),
      getIt(),
      getIt(),
      getIt(),
    ),
  );
}

Future<void> _initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(RecipeResponseModelImplAdapter());
  Hive.registerAdapter(RecipeModelImplAdapter());
  Hive.registerAdapter(NutritionInformationAdapter());
  Hive.registerAdapter(FirebaseUserModelImplAdapter());
  Box<FirebaseUserModel> userBox =
      await Hive.openBox<FirebaseUserModel>(AppConstants.userBox);
  Box<RecipeResponseModel> recipeBox =
      await Hive.openBox<RecipeResponseModel>(AppConstants.recipeBox);
  getIt.registerLazySingleton<Box<FirebaseUserModel>>(() => userBox);
  getIt.registerLazySingleton<Box<RecipeResponseModel>>(() => recipeBox);
}