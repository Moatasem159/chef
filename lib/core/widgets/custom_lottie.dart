import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomLottie extends StatelessWidget {
  final String icon;

  const CustomLottie({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      icon,
      frameRate: FrameRate.max,
    );
  }
}