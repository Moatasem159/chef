import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/extension/spacing.dart';
import 'package:chef/core/themes/app_colors.dart';
import 'package:chef/core/utils/app_assets.dart';
import 'package:chef/core/utils/app_text_styles.dart';
import 'package:chef/core/widgets/main_button_with_text.dart';
import 'package:chef/core/widgets/main_text_button.dart';
import 'package:chef/features/auth/ui/widgets/auth_text_form_field.dart';
import 'package:chef/features/auth/ui/widgets/background_painter.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

part 'remember_me.dart';

part 'login_title.dart';

part 'login_form.dart';

part 'login_with_google.dart';

part 'forgot_password.dart';

part 'or_sign_with.dart';

part 'sign_up_button.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          size: Size(context.screenWidth,
              (context.screenWidth * 2.0444444444444443).toDouble()),
          painter: BackgroundPainter(context),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const _LoginTitle(),
                const _LoginForm(),
                const _OrSignWith(),
                verticalSpace(15),
                const _LoginWithGoogle(),
                verticalSpace(15),
                const _SignUpButton(),
              ],
            ),
          ),
        )
      ],
    );
  }
}