import 'package:chef/features/auth/ui/widgets/auth_scaffold.dart';
import 'package:chef/features/auth/ui/widgets/register_widgets/register_body.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthScaffold(
      body: RegisterBody(),
    );
  }
}