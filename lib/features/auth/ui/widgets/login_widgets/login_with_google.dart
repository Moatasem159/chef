part of 'login_body.dart';
class _LoginWithGoogle extends StatelessWidget {
  const _LoginWithGoogle();
  @override
  Widget build(BuildContext context) {
    return MainButtonWithText(
      title: context.local.google,
      foregroundColor: Colors.black,
      backgroundColor: Colors.white,
      overlayColor: Colors.grey.withOpacity(0.3),
      buttonSize: Size.fromWidth(context.screenWidth),
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(AppAssets.googleIcon),
          horizontalSpace(8),
          Text(context.local.google,),
        ],
      ),
    );
  }
}