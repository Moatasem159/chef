part of 'login_body.dart';

class _LoginForm extends StatefulWidget {
  const _LoginForm();

  @override
  State<_LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<_LoginForm> {
  bool isObscureText = true;
  bool saveLogin = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AuthTextFormField(
            controller: context.read<LoginCubit>().emailController,
            hintText: context.local.email,
            validator: (value) {
              if (value.isNullOrEmpty() || !AppRegex.isEmailValid(value!)) {
                return context.local.validEmail;
              }
              return null;
            },
          ),
          verticalSpace(15),
          AuthTextFormField(
            obscure: isObscureText,
            controller: context.read<LoginCubit>().passwordController,
            hintText: context.local.password,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value.isNullOrEmpty()) {
                return context.local.validPassword;
              }
              if (!AppRegex.hasMinLength(value!)) {
                return context.local.numberCount;
              }
              return null;
            },
          ),
          verticalSpace(15),
          Row(
            children: [
              _RememberMe(
                saveLogin,
                (value) {
                  setState(() {
                    saveLogin = value!;
                  });
                },
              ),
              const Spacer(),
              const _ForgotPassword(),
            ],
          ),
          verticalSpace(25),
          MainButtonWithText(
            onTap: () {
              if (context.read<LoginCubit>().formKey.currentState!.validate()) {
                context.read<LoginCubit>().loginWithEmailAndPassword(saveLogin);
                showAdaptiveDialog(
                  barrierDismissible: true,
                  context: context,
                  builder: (_) {
                    return BlocProvider<LoginCubit>.value(
                      value: context.read<LoginCubit>(),
                      child: const _LoginLoadingDialog(),
                    );
                  },
                );
              }
            },
            buttonSize: Size.fromWidth(context.screenWidth),
            title: context.local.login,
          ),
          verticalSpace(25),
        ],
      ),
    );
  }
}