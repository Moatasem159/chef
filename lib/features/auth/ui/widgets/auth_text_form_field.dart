import 'package:chef/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class AuthTextFormField extends StatelessWidget {
  final String hintText;

  final Widget? suffixIcon;
  final bool obscure;

  final TextEditingController? controller;
  final FormFieldValidator<String?>? validator;

  const AuthTextFormField({
    super.key,
    required this.hintText,
    this.obscure = false,
    this.suffixIcon,
    this.validator,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: Colors.white,
      obscureText: obscure,
      validator: validator,
      style: AppTextStyles.style16Normal.copyWith(color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}