import 'package:chef/core/errors/error_handler.dart';
import 'package:chef/core/helpers/firebase_result.dart';
import 'package:chef/features/auth/data/models/firebase_user.dart';
import 'package:chef/features/auth/data/repository/firebase_auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  final FirebaseAuthRepository _firebaseAuthRepository;

  RegisterCubit(this._firebaseAuthRepository)
      : super(const RegisterInitialState());
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  register() async {
    emit(const RegisterLoadingState());
    final FirebaseResult<UserCredential> response = await _firebaseAuthRepository.registerWithEmailAndPassword(
      user: FirebaseUserModel(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (UserCredential data) => emit(const RegisterSuccessState()),
      failure: (ErrorHandler errorHandler) => emit(RegisterErrorState(errorHandler.code)),
    );
  }


  @override
  close() async {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.close();
  }
}