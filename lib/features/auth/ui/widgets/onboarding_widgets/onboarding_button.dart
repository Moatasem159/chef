part of 'onboarding_body.dart';
class _OnboardingButton extends StatelessWidget {
  const _OnboardingButton();
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 80.h,
      left: 10.w,
      right: 10.w,
      child: MainButtonWithText(
        onTap: () async{
          await SharedPrefHelper.setData(AppConstants.skippedOnboarding,true).then((value) {
            context.pushNamedAndRemoveUntil(Routes.loginRoute,predicate: (Route route) => false);
          },);
        },
        title: context.local.letsGetStarted,
      ),
    );
  }
}