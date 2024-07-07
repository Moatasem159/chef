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
    } else {
      code = error.toString();
    }
  }

  static String handleErrorMessages(BuildContext context, String code) {
    if (code == ExceptionCodes.emailAlreadyExists) {
      return context.local.emailAlreadyInUse;
    } else if (code == ExceptionCodes.invalidCredential) {
      return context.local.loginError;
    } else if (code == ExceptionCodes.noImageError) {
      return context.local.noImageError;
    } else if (code == ExceptionCodes.imageError) {
      return context.local.imageError;
    } else if (code == ExceptionCodes.internetConnection) {
      return "Internet connection";
    } else {
      return code;
    }
  }
}