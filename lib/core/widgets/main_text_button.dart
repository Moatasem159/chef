import 'package:chef/core/extension/context_extensions.dart';
import 'package:flutter/material.dart';

class MainTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final Color? foregroundColor;

  const MainTextButton({
    super.key,
    required this.onTap,
    required this.title,
    this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: context.theme.textButtonTheme.style!.copyWith(
        foregroundColor: WidgetStatePropertyAll(foregroundColor),
      ),
      child: Text(
        title,
      ),
    );
  }
}