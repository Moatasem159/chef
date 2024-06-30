import 'package:chef/bloc_observer.dart';
import 'package:chef/features/auth/data/repository/firebase_auth_repository.dart';
import 'package:chef/features/auth/data/services/firebase_auth.dart';
import 'package:chef/firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Bloc.observer=AppBlocObserver();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  getIt.registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance);
  getIt.registerLazySingleton<FirebaseAuthClient>(() => FirebaseAuthClient(getIt(),getIt()));
  getIt.registerLazySingleton<FirebaseAuthRepository>(() => FirebaseAuthRepository(getIt()));
}