import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/themes/app_colors.dart';
import 'package:chef/core/utils/app_text_styles.dart';
import 'package:chef/core/widgets/main_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
part 'onboarding_background_painter.dart';
class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      //TODO: add app Icon.
      children: [
        CustomPaint(
          size: Size(context.screenWidth,
              (context.screenWidth * 2.0444444444444443).toDouble()),
          painter: _OnboardingBackgroundPainter(context),
        ),
        Positioned(
          top: 200.h,
          left: 50.w,
          child: Text(
            context.local.onboardingTitle,
            style: AppTextStyles.style24Bold.copyWith(color: Colors.white),
          ),
        ),
        Positioned(
          left: 10.w,
          right: 10.w,
          top: 280.h,
          child: Text(
            context.local.onboardingSubTitle,
            style: AppTextStyles.style16SemiBold.copyWith(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Positioned(
          bottom: 80.h,
          left: 10.w,
          right: 10.w,
          child: MainTextButton(
            onTap: () {},
            title: context.local.letsGetStarted,
          ),
        )
      ],
    );
  }
}