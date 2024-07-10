part of 'login_body.dart';
class _LoginTitle extends StatelessWidget {
  const _LoginTitle();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(60),
        Text(
          context.locale.loginTitle,
          style: AppTextStyles.style28Bold.copyWith(
            color: Colors.white,
          ),
        ),
        verticalSpace(10),
        Text(
          context.locale.loginSubTitle,
          style: AppTextStyles.style16Light.copyWith(
            color: Colors.grey[100],
          ),
        ),
        verticalSpace(30),
      ],
    );
  }
}