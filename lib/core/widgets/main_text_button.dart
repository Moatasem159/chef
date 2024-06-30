import 'package:flutter/material.dart';

class MainTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;

  const MainTextButton({
    super.key,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        title,
      ),
    );
  }
}