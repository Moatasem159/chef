import 'package:flutter/material.dart';
import 'package:chef/core/extension/spacing.dart';
import 'package:chef/core/utils/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/widgets/main_button_with_text.dart';
part 'cuisine_list.dart';
part 'reset_button.dart';
part 'submit_button.dart';
part 'image_container.dart';
part 'option_container.dart';
part 'cuisines_section.dart';
part 'ingredients_section.dart';
part 'create_recipe_title.dart';
part 'background_container.dart';
part 'create_recipe_actions.dart';
part 'stable_ingredients_list.dart';
part 'dietary_restriction_list.dart';
part 'add_more_context_section.dart';
part 'stable_ingredients_section.dart';
part 'dietary_restriction_section.dart';
class CreateRecipeWithImageBody extends StatelessWidget {
  const CreateRecipeWithImageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          pinned: true,
          leadingWidth: 40,
          title: Text(context.local.createRecipe),
        ),
        verticalSliverSpace(10),
        const _CreateRecipeTitle(),
        verticalSliverSpace(10),
        const _IngredientsSection(),
        verticalSliverSpace(20),
        const _StableIngredientsSection(),
        verticalSliverSpace(20),
        const _DietaryRestrictionSection(),
        verticalSliverSpace(20),
        const _CuisinesSection(),
        verticalSliverSpace(20),
        const _AddMoreContextSection(),
        verticalSliverSpace(20),
        const _CreateRecipeActions(),
        verticalSliverSpace(20),
      ],
    );
  }
}