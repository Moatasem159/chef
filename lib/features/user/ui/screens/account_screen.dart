import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/router/routes.dart';
import 'package:chef/core/widgets/custom_drawer/main_drawer.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (_) {
        context.pushReplacementNamed(Routes.discoverRoute);
      },
      child: SafeArea(
        child: Scaffold(
          drawer: const MainDrawer(),
          appBar: AppBar(),
        ),
      ),
    );
  }
}