import 'dart:async';

import 'package:chef/core/errors/error_handler.dart';
import 'package:chef/core/helpers/firebase_result.dart';
import 'package:chef/features/auth/data/models/firebase_user.dart';
import 'package:chef/features/auth/data/services/firebase_auth.dart';
import 'package:chef/features/auth/data/services/local_firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthRepository {
  final LocalFirebaseAuth _localFirebaseAuth;
  final FirebaseAuthClient _firebaseAuthClient;

  FirebaseAuthRepository(this._firebaseAuthClient, this._localFirebaseAuth);

  Future<FirebaseResult<UserCredential>> registerWithEmailAndPassword(
      {required FirebaseUserModel user}) async {
    try {
      final UserCredential response =
          await _firebaseAuthClient.registerWithEmailAndPassword(user: user);
      await _firebaseAuthClient.saveUserData(
        user: user.copyWith(uId: response.user!.uid),
      );
      return FirebaseResult.success(response);
    } catch (error) {
      return FirebaseResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<FirebaseResult<FirebaseUserModel>> loginWithEmailAndPassword(
      {required FirebaseUserModel user, required bool saveLogin}) async {
    try {
      final UserCredential response =
          await _firebaseAuthClient.loginWithEmailAndPassword(user: user);
      final FirebaseUserModel userModel = await _firebaseAuthClient.getUserData(
          user: user.copyWith(uId: response.user!.uid));
      if(saveLogin) {
        await _localFirebaseAuth.cacheUser(userModel);
      }
      return FirebaseResult.success(userModel);
    } catch (error) {
      return FirebaseResult.failure(ErrorHandler.handle(error));
    }
  }
}