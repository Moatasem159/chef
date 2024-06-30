import 'dart:async';

import 'package:chef/core/errors/error_handler.dart';
import 'package:chef/core/helpers/firebase_result.dart';
import 'package:chef/features/auth/data/models/firebase_user.dart';
import 'package:chef/features/auth/data/services/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthRepository {
  final FirebaseAuthClient _firebaseAuthClient;

  FirebaseAuthRepository(this._firebaseAuthClient);

  Future<FirebaseResult<UserCredential>> register(
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
}