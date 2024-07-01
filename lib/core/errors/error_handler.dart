import 'package:chef/core/extension/context_extensions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'firebase_exception_codes.dart';

class ErrorHandler implements Exception {
  late String code;

  ErrorHandler.handle(dynamic error) {
    if (error is FirebaseException) {
      code = error.code;
      debugPrint(error.message);
      debugPrint(error.code);
    }
  }

  static String handleErrorMessages(BuildContext context, String code) {
    if (code == FirebaseExceptionCodes.emailAlreadyExists) {
      return context.local.emailAlreadyInUse;
    } else if (code == FirebaseExceptionCodes.invalidCredential) {
      return context.local.loginError;
    } else {
      return code;
    }
  }
}