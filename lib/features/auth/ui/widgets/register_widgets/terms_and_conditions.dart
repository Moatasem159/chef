part of 'register_body.dart';
class _TermsAndConditions extends StatelessWidget {
  const _TermsAndConditions();
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        text: context.local.byRegister,
        style: AppTextStyles.style16Normal.copyWith(
          fontSize: 14.sp,
          color: Colors.grey,
        ),
        children: [
          TextSpan(
              text: context.local.terms,
              style: AppTextStyles.style16Bold.copyWith(
                  fontSize: 14.sp,
                  color: context.isDark?Colors.white:Colors.black
              )
          ),
          TextSpan(
            text: context.local.and,
            style: AppTextStyles.style16Normal.copyWith(
              fontSize: 14.sp,
              color: Colors.grey,
            ),
          ),
          TextSpan(
              text: context.local.privacyPolicy,
              style: AppTextStyles.style16Bold.copyWith(
                  fontSize: 14.sp,
                  color: context.isDark?Colors.white:Colors.black
              )
          ),
        ],
      ),
    );
  }
}