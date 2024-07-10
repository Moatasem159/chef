part of 'login_body.dart';
class _ForgotPassword extends StatelessWidget {
  const _ForgotPassword();
  @override
  Widget build(BuildContext context) {
    return MainTextButton(
      onTap: () {},
      foregroundColor: context.theme.primaryColor,
      title: context.locale.forgotPassword,
    );
  }
}