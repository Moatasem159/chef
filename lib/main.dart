import 'package:chef/app.dart';
import 'package:chef/core/router/app_router.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(
    ChefBot(
      appRouter: AppRouter(),
    ),
  );
}