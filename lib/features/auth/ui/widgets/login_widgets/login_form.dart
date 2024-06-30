part of 'login_body.dart';

class _LoginForm extends StatelessWidget {
  const _LoginForm();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          AuthTextFormField(
            hintText: context.local.email,
          ),
          verticalSpace(15),
          AuthTextFormField(
            hintText: context.local.password,
          ),
          verticalSpace(15),
          const Row(
            children: [
              _RememberMe(),
              Spacer(),
              _ForgotPassword(),
            ],
          ),
          verticalSpace(25),
          MainButtonWithText(
            onTap: () {},
            buttonSize: Size.fromWidth(context.screenWidth),
            title: context.local.login,
          ),
          verticalSpace(25),
        ],
      ),
    );
  }
}