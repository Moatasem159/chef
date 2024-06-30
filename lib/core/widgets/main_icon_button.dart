import 'package:chef/core/extension/context_extensions.dart';
import 'package:flutter/material.dart';

class MainIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final Color? foregroundColor;

  const MainIconButton({
    super.key,
    required this.onTap,
    required this.icon,
    this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      visualDensity: VisualDensity.compact,
      style: context.theme.iconButtonTheme.style!.copyWith(
        foregroundColor: WidgetStatePropertyAll(foregroundColor),
      ),
      icon: Icon(icon),
    );
  }
}