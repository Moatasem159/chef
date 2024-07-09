import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomLottie extends StatelessWidget {
  final String icon;
  final double? width;
  final double? height;

  const CustomLottie({
    super.key,
    required this.icon,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      icon,
      width: width,
      height: height,
      frameRate: FrameRate.max,
    );
  }
}