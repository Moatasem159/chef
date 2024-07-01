import 'package:chef/core/errors/error_handler.dart';
import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/extension/spacing.dart';
import 'package:chef/core/extension/string_extension.dart';
import 'package:chef/core/helpers/app_regex.dart';
import 'package:chef/core/router/routes.dart';
import 'package:chef/core/utils/app_text_styles.dart';
import 'package:chef/core/widgets/main_button_with_text.dart';
import 'package:chef/core/widgets/main_text_button.dart';
import 'package:chef/features/auth/logic/login_cubit/login_cubit.dart';
import 'package:chef/features/auth/ui/widgets/auth_text_form_field.dart';
import 'package:chef/features/auth/ui/widgets/background_painter.dart';
import 'package:chef/features/auth/ui/widgets/google_button.dart';
import 'package:chef/features/auth/ui/widgets/or_sign_with.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
part 'login_loading_dialog.dart';
part 'remember_me.dart';

part 'login_title.dart';

part 'login_form.dart';

part 'forgot_password.dart';

part 'sign_up_button.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(overscroll: false),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            CustomPaint(
              size: Size(context.screenWidth, 630.h),
              painter: BackgroundPainter(context),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const _LoginTitle(),
                  const _LoginForm(),
                  const OrSignWith(sign: Sign.signIn),
                  verticalSpace(15),
                  const GoogleButton(),
                  verticalSpace(15),
                  const _SignUpButton(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}