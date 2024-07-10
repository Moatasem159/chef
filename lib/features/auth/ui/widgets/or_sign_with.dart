import 'package:chef/core/extension/context_extensions.dart';
import 'package:flutter/material.dart';

class OrSignWith extends StatelessWidget {
  final Sign sign;

  const OrSignWith({super.key, required this.sign});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
              height: 1,
              margin: const EdgeInsets.symmetric(horizontal: 6),
              color: Colors.grey[400]),
        ),
        switch (sign) {
          Sign.signIn => Text(context.locale.orSignIn),
          Sign.signUp => Text(context.locale.orSignUp),
        },
        Expanded(
          child: Container(
              height: 1,
              margin: const EdgeInsets.symmetric(horizontal: 6),
              color: Colors.grey[400]),
        ),
      ],
    );
  }
}

enum Sign {
  signIn,
  signUp,
}