import 'package:chef/core/extension/context_extensions.dart';
import 'package:flutter/material.dart';

class MainButtonWithText extends StatelessWidget {
  final VoidCallback? onTap;
  final String? title;
  final Size? buttonSize;
  final Widget? child;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? overlayColor;
  final OutlinedBorder? border;
  final EdgeInsets? padding;

  const MainButtonWithText({
    super.key,
    this.onTap,
    this.title,
    this.buttonSize,
    this.backgroundColor,
    this.foregroundColor,
    this.child,
    this.overlayColor,
    this.border,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: context.theme.elevatedButtonTheme.style!.copyWith(
          fixedSize: WidgetStatePropertyAll(buttonSize),
          iconColor: WidgetStatePropertyAll(foregroundColor),
          padding: WidgetStatePropertyAll(padding),
          shape: WidgetStatePropertyAll(border),
          backgroundColor: WidgetStatePropertyAll(backgroundColor),
          foregroundColor: WidgetStatePropertyAll(foregroundColor),
          overlayColor: WidgetStatePropertyAll(overlayColor)),
      child: child ?? Text(title!),
    );
  }
}