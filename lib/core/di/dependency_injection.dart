import 'package:chef/core/helpers/constants.dart';
import 'package:chef/features/auth/data/models/firebase_user.dart';
import 'package:chef/features/auth/data/repository/firebase_auth_repository.dart';
import 'package:chef/features/auth/data/services/firebase_auth.dart';
import 'package:chef/features/auth/data/services/local_firebase_auth.dart';
import 'package:chef/firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
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
  getIt.registerLazySingleton<LocalFirebaseAuth>(
          () => LocalFirebaseAuth(getIt()));
  getIt.registerLazySingleton<FirebaseAuthRepository>(
      () => FirebaseAuthRepository(getIt(),getIt()));
}

Future<void> _initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(FirebaseUserModelImplAdapter());
  Box<FirebaseUserModel> userBox = await Hive.openBox<FirebaseUserModel>(AppConstants.userBox);
  getIt.registerLazySingleton<Box<FirebaseUserModel>>(() => userBox);
}