import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/extension/spacing.dart';
import 'package:chef/core/utils/app_assets.dart';
import 'package:chef/core/utils/app_text_styles.dart';
import 'package:chef/core/widgets/main_button_with_text.dart';
import 'package:chef/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
part '../widgets/recipe_with_pic_card.dart';
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
        verticalSliverSpace(20),
        const _RecipeWithPicCard()
      ],
    );
  }
}