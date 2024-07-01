import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/extension/spacing.dart';
import 'package:chef/core/utils/app_text_styles.dart';
import 'package:chef/main.dart';
import 'package:flutter/material.dart';

part '../widgets/recipe_title.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        verticalSliverSpace(30),
        const _RecipeTitle(),
      ],
    );
  }
}