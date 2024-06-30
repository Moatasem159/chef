part of 'register_body.dart';

class _RegisterTitle extends StatelessWidget {
  const _RegisterTitle();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(60),
        Text(
          context.local.createAccount,
          style: AppTextStyles.style28Bold.copyWith(
            color: Colors.white,
          ),
        ),
        verticalSpace(10),
        Text(
          context.local.registerDialog,
          style: AppTextStyles.style16Light.copyWith(
            color: Colors.grey[100],
          ),
        ),
        verticalSpace(30),
      ],
    );
  }
}