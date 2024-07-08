import 'dart:io';
import 'package:camera/camera.dart';
import 'package:chef/features/recipe/ui/widgets/create_recipe/create_recipe_loading_dialog.dart';
import 'package:flutter/material.dart';
import 'package:chef/core/extension/spacing.dart';
import 'package:chef/core/utils/app_text_styles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/widgets/main_button_with_text.dart';
import 'package:chef/features/recipe/logic/create_recipe_cubit/create_recipe_cubit.dart';
import 'package:chef/features/recipe/ui/widgets/create_recipe/choose_image_dialog/choose_image_dialog.dart';

part 'reset_button.dart';

part 'submit_button.dart';

part 'image_container.dart';

part 'option_container.dart';

part 'cuisines_section.dart';

part 'ingredients_section.dart';

part 'create_recipe_title.dart';

part 'background_container.dart';

part 'create_recipe_actions.dart';

part 'add_more_context_section.dart';

part 'stable_ingredients_section.dart';

part 'dietary_restriction_section.dart';

class CreateRecipeWithImageBody extends StatelessWidget {
  const CreateRecipeWithImageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(overscroll: false),
      child: Scrollbar(
        child:ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            const _CreateRecipeTitle(),
            verticalSpace(10),
            const _IngredientsSection(),
            verticalSpace(20),
            const _StableIngredientsSection(),
            verticalSpace(20),
            const _DietaryRestrictionSection(),
            verticalSpace(20),
            const _CuisinesSection(),
            verticalSpace(20),
            const _AddMoreContextSection(),
            verticalSpace(20),
            const _CreateRecipeActions(),
            verticalSpace(10),
          ],
        )
      ),
    );
  }
}