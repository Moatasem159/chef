import 'package:flutter/material.dart';

class ErrorHandler implements Exception {
  late String error;
  ErrorHandler.handle(dynamic error) {
    this.error=error.toString();
    debugPrint(error.toString());
  }
}