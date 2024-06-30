part of 'register_body.dart';

class _RegisterForm extends StatefulWidget {
  const _RegisterForm();

  @override
  State<_RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<_RegisterForm> {
  bool isObscureText = true;
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  late final TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<RegisterCubit>().passwordController;
    passwordController.addListener(setupPasswordControllerListener);
  }

  void setupPasswordControllerListener() {
    setState(() {
      hasLowercase = AppRegex.hasLowerCase(passwordController.text);
      hasUppercase = AppRegex.hasUpperCase(passwordController.text);
      hasSpecialCharacters =
          AppRegex.hasSpecialCharacter(passwordController.text);
      hasNumber = AppRegex.hasNumber(passwordController.text);
      hasMinLength = AppRegex.hasMinLength(passwordController.text);
    });
  }

  @override
  void dispose() {
    passwordController.removeListener(setupPasswordControllerListener);
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterStates>(
      listener: (context, state) {
        if(state is RegisterLoadingState)
          {
          //TODO:finish loading ui
          showAdaptiveDialog(
              barrierDismissible: false,
              context: context, builder:(context) {
               return const PopScope(
                 canPop: false,
                 child: AlertDialog.adaptive(
                   content: CircularProgressIndicator(
                   ),
                 ),
               );
            },);
          }
      },
      child: Form(
        key: context.read<RegisterCubit>().formKey,
        child: Column(
          children: [
            AuthTextFormField(
              validator: (value) {
                if (value.isNullOrEmpty()) {
                  return context.local.validName;
                }
                return null;
              },
              controller: context.read<RegisterCubit>().nameController,
              hintText: context.local.fullName,
            ),
            verticalSpace(15),
            AuthTextFormField(
              controller: context.read<RegisterCubit>().emailController,
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
              controller: context.read<RegisterCubit>().passwordController,
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
              hintText: context.local.password,
              validator: (value) {
                if (value.isNullOrEmpty()) {
                  return context.local.validPassword;
                }
                if (!hasLowercase ||
                    !hasUppercase ||
                    !hasMinLength ||
                    !hasSpecialCharacters ||
                    !hasNumber) {
                  return context.local.validPassword;
                }
                return null;
              },
            ),
            verticalSpace(15),
            MainButtonWithText(
              onTap: () {
                if (context
                    .read<RegisterCubit>()
                    .formKey
                    .currentState!
                    .validate()) {
                  context.read<RegisterCubit>().register();
                }
              },
              title: context.local.createAccount,
              buttonSize: Size.fromWidth(context.screenWidth),
            ),
            verticalSpace(15),
            PasswordValidations(
              hasLowerCase: hasLowercase,
              hasUpperCase: hasUppercase,
              hasSpecialCharacters: hasSpecialCharacters,
              hasNumber: hasNumber,
              hasMinLength: hasMinLength,
            ),
            verticalSpace(25),
          ],
        ),
      ),
    );
  }
}