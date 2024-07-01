import 'package:chef/core/errors/error_handler.dart';
import 'package:chef/core/helpers/firebase_result.dart';
import 'package:chef/features/auth/data/models/firebase_user.dart';
import 'package:chef/features/auth/data/repository/firebase_auth_repository.dart';
import 'package:chef/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'login_state.dart';
class LoginCubit extends Cubit<LoginStates> {
  final FirebaseAuthRepository _firebaseAuthRepository;
  LoginCubit(this._firebaseAuthRepository) : super(const LoginInitialState());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  loginWithEmailAndPassword(bool saveLogin) async {
    emit(const LoginLoadingState());
    final FirebaseResult<FirebaseUserModel> response = await _firebaseAuthRepository.loginWithEmailAndPassword(
      saveLogin: saveLogin,
      user: FirebaseUserModel(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (FirebaseUserModel data){
        if(!saveLogin) {
          loggedInUser = data;
        }
        return emit(const LoginSuccessState());
      },
      failure: (ErrorHandler errorHandler) => emit(LoginErrorState(errorHandler.code)),
    );
  }
}