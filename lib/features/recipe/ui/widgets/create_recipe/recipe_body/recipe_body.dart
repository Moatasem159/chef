import 'package:flutter/material.dart';

class RecipeBody extends StatelessWidget {
  const RecipeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(overscroll: false),
      child: Scrollbar(
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: const [],
        ),
      ),
    );
  }
}