import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/extension/spacing.dart';
import 'package:chef/core/utils/app_assets.dart';
import 'package:chef/core/widgets/main_button_with_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MainButtonWithText(
      title: context.locale.google,
      foregroundColor: Colors.black,
      backgroundColor: Colors.white,
      overlayColor: Colors.grey.withOpacity(0.3),
      buttonSize: Size.fromWidth(context.screenWidth),
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(AppAssets.googleIcon),
          horizontalSpace(8),
          Text(
            context.locale.google,
          ),
        ],
      ),
    );
  }
}