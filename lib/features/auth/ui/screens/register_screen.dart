import 'package:chef/core/di/dependency_injection.dart';
import 'package:chef/features/auth/logic/register_cubit/register_cubit.dart';
import 'package:chef/features/auth/ui/widgets/auth_scaffold.dart';
import 'package:chef/features/auth/ui/widgets/register_widgets/register_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegisterCubit>(
      create: (context) => RegisterCubit(getIt()),
      child: const AuthScaffold(
        body: RegisterBody(),
      ),
    );
  }
}