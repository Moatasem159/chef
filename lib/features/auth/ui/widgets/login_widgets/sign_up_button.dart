part of 'login_body.dart';

class _SignUpButton extends StatelessWidget {
  const _SignUpButton();

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: context.local.doesNotHaveAccount,
        children: [
          TextSpan(
            text: context.local.signup,
            recognizer: TapGestureRecognizer()..onTap = () {
              context.pushNamed(Routes.registerRoute);
            },
            style: TextStyle(
              color: context.theme.primaryColor,
              decoration: TextDecoration.underline,
              decorationColor: context.theme.primaryColor,
            ),
          )
        ],
      ),
    );
  }
}