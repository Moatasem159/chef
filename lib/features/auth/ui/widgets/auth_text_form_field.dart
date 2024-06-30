import 'package:chef/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class AuthTextFormField extends StatelessWidget {
  final String hintText;

  const AuthTextFormField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.white,
      style: AppTextStyles.style16Normal.copyWith(color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}