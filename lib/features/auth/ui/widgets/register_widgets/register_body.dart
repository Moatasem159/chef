import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/features/auth/ui/widgets/background_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          size: Size(context.screenWidth,630.h),
          painter: BackgroundPainter(context),
        ),
      ],
    );
  }
}