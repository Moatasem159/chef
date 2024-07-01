part of 'register_body.dart';
class _TermsAndConditions extends StatelessWidget {
  const _TermsAndConditions();
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        text: context.local.byRegister,
        style: AppTextStyles.style14Normal.copyWith(
          color: Colors.grey,
        ),
        children: [
          TextSpan(
              text: context.local.terms,
              style: AppTextStyles.style14bold.copyWith(
                  fontSize: 14.sp,
                  color: context.isDark?Colors.white:Colors.black
              )
          ),
          TextSpan(
            text: context.local.and,
            style: AppTextStyles.style14Normal.copyWith(
              color: Colors.grey,
            ),
          ),
          TextSpan(
              text: context.local.privacyPolicy,
              style: AppTextStyles.style14bold.copyWith(
                  color: context.isDark?Colors.white:Colors.black
              )
          ),
        ],
      ),
    );
  }
}