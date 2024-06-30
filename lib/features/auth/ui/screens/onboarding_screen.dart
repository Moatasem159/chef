import 'package:chef/features/auth/ui/widgets/auth_scaffold.dart';
import 'package:chef/features/auth/ui/widgets/onboarding_widgets/onboarding_body.dart';
import 'package:flutter/material.dart';
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const AuthScaffold(
      body: OnboardingBody(),
    );
  }
}