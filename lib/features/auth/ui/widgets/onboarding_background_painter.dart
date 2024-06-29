
import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class OnboardingBackgroundPainter extends CustomPainter {
  final BuildContext context;
  const OnboardingBackgroundPainter(this.context);
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 2

    Paint paintFill0 = Paint()
      ..color = context.isDark
          ? AppColors.secondaryDarkColor
          : AppColors.secondaryLightColor
      ..style = PaintingStyle.fill;
    Path path_0 = Path();
    path_0.moveTo(size.width * -0.0016667, size.height * 0.0884103);
    path_0.quadraticBezierTo(size.width * 0.9560278, size.height * 0.3867527,
        size.width * 1.0031667, size.height * 0.4752853);
    path_0.quadraticBezierTo(size.width * 0.9997222, size.height * 0.6354484,
        size.width * -0.0027778, size.height * 0.7475543);

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintFill1 = Paint()
      ..color = context.isDark
          ? AppColors.primaryDarkColor
          : AppColors.primaryLightColor
      ..style = PaintingStyle.fill;
    Path path_1 = Path();
    path_1.moveTo(0, 0);
    path_1.quadraticBezierTo(size.width * -0.0752778, size.height * 0.4187636,
        size.width * 0.6731111, size.height * 0.4714674);
    path_1.cubicTo(
        size.width * 0.8118889,
        size.height * 0.4806114,
        size.width * 0.8285833,
        size.height * 0.4383424,
        size.width * 0.8333333,
        size.height * 0.4078804);
    path_1.quadraticBezierTo(size.width * 0.9268611, size.height * 0.4072962,
        size.width * 1.0031389, size.height * 0.4881658);
    path_1.lineTo(size.width * 1.0005556, 0);
    path_1.lineTo(0, 0);
    path_1.close();

    canvas.drawPath(path_1, paintFill1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}