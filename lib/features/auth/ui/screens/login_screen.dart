import 'package:chef/core/di/dependency_injection.dart';
import 'package:chef/features/auth/logic/login_cubit/login_cubit.dart';
import 'package:chef/features/auth/ui/widgets/auth_scaffold.dart';
import 'package:chef/features/auth/ui/widgets/login_widgets/login_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => LoginCubit(getIt()),
      child: const AuthScaffold(
        body: LoginBody(),
      ),
    );
  }
}