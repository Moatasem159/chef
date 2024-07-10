import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/helpers/constants.dart';
import 'package:chef/core/helpers/shared_preferences_helper.dart';
import 'package:chef/core/router/routes.dart';
import 'package:chef/core/utils/app_text_styles.dart';
import 'package:chef/core/widgets/main_button_with_text.dart';
import 'package:chef/features/auth/ui/widgets/background_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
part 'onboarding_button.dart';
class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      //TODO: add app Icon.
      children: [
        CustomPaint(
          size: Size(context.screenWidth,630.h),
          painter: BackgroundPainter(context),
        ),
        Positioned(
          top: 200.h,
          left: 50.w,
          child: Text(
            context.locale.onboardingTitle,
            style: AppTextStyles.style24Bold.copyWith(color: Colors.white),
          ),
        ),
        Positioned(
          left: 10.w,
          right: 10.w,
          top: 280.h,
          child: Text(
            context.locale.onboardingSubTitle,
            style: AppTextStyles.style16SemiBold.copyWith(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const _OnboardingButton()
      ],
    );
  }
}