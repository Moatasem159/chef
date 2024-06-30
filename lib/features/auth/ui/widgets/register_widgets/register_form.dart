part of 'register_body.dart';
class _RegisterForm extends StatelessWidget {
  const _RegisterForm();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          AuthTextFormField(hintText:context.local.fullName),
          verticalSpace(15),
          AuthTextFormField(hintText: context.local.email),
          verticalSpace(15),
          AuthTextFormField(hintText: context.local.password),
          verticalSpace(15),
          MainButtonWithText(
            onTap: () {},
            title: context.local.createAccount,
            buttonSize: Size.fromWidth(context.screenWidth),
          ),
          verticalSpace(25),
        ],
      ),
    );
  }
}