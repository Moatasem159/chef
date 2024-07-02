import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/extension/spacing.dart';
import 'package:chef/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
part 'image_container.dart';
part 'ingredients_section.dart';
part 'stable_ingredients_section.dart';
part 'option_container.dart';
part 'stable_ingredients_list.dart';
part 'create_recipe_title.dart';
part 'background_container.dart';
part 'dietary_restriction_section.dart';
part 'dietary_restriction_list.dart';
class CreateRecipeWithImageBody extends StatelessWidget {
  const CreateRecipeWithImageBody({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
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

      ],
    );
  }
}