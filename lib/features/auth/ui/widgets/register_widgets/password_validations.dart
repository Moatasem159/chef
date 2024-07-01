import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/extension/spacing.dart';
import 'package:chef/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;

  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _ValidationRow(
          text: context.local.lowerLetter,
          hasValidated: hasLowerCase,
        ),
        verticalSpace(2),
        _ValidationRow(
          text: context.local.upperLetter,
          hasValidated: hasUpperCase,
        ),
        verticalSpace(2),
        _ValidationRow(
          text: context.local.specialLetter,
          hasValidated: hasSpecialCharacters,
        ),
        verticalSpace(2),
        _ValidationRow(
          text: context.local.numberNum,
          hasValidated: hasNumber,
        ),
        verticalSpace(2),
        _ValidationRow(
          text: context.local.numberCount,
          hasValidated: hasMinLength,
        ),
      ],
    );
  }
}

class _ValidationRow extends StatelessWidget {
  final String text;
  final bool hasValidated;

  const _ValidationRow({required this.text, required this.hasValidated});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         CircleAvatar(
          radius: 6,
          backgroundColor: hasValidated? context.theme.colorScheme.secondary:Colors.grey,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: AppTextStyles.style14Normal.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.grey,
            decorationThickness: 2,
            color: hasValidated ? Colors.grey : context.theme.primaryColor,
          ),
        )
      ],
    );
  }
}