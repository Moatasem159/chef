part of 'register_body.dart';

class _RegisterTitle extends StatelessWidget {
  const _RegisterTitle();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(50),
        Text(
          context.locale.createAccount,
          style: AppTextStyles.style28Bold.copyWith(
            color: Colors.white,
          ),
        ),
        verticalSpace(10),
        Text(
          context.locale.registerDialog,
          style: AppTextStyles.style16Light.copyWith(
            color: Colors.grey[100],
          ),
        ),
        verticalSpace(30),
      ],
    );
  }
}