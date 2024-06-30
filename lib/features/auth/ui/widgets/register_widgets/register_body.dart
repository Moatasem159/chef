import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/extension/spacing.dart';
import 'package:chef/core/extension/string_extension.dart';
import 'package:chef/core/helpers/app_regex.dart';
import 'package:chef/core/utils/app_text_styles.dart';
import 'package:chef/core/widgets/main_button_with_text.dart';
import 'package:chef/core/widgets/main_icon_button.dart';
import 'package:chef/features/auth/logic/register_cubit/register_cubit.dart';
import 'package:chef/features/auth/ui/widgets/auth_text_form_field.dart';
import 'package:chef/features/auth/ui/widgets/background_painter.dart';
import 'package:chef/features/auth/ui/widgets/google_button.dart';
import 'package:chef/features/auth/ui/widgets/or_sign_with.dart';
import 'package:chef/features/auth/ui/widgets/register_widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

part 'register_title.dart';

part 'register_form.dart';
part 'terms_and_conditions.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

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
            Positioned(
              top: 20.h,
              child: MainIconButton(
                foregroundColor: Colors.white,
                icon: Icons.arrow_back,
                onTap: context.pop,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const _RegisterTitle(),
                  const _RegisterForm(),
                  const OrSignWith(sign: Sign.signUp),
                  verticalSpace(25),
                  const GoogleButton(),
                  verticalSpace(15),
                  const _TermsAndConditions()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}