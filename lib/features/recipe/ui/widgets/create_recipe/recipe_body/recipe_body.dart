import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/extension/spacing.dart';
import 'package:chef/core/utils/app_animated_icons.dart';
import 'package:chef/core/utils/app_text_styles.dart';
import 'package:chef/core/widgets/custom_lottie.dart';
import 'package:chef/features/recipe/data/models/recipe_response_model.dart';
import 'package:chef/features/recipe/logic/create_recipe_cubit/create_recipe_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
part 'recipe_success_body/recipe_success_body.dart';
part 'recipe_success_body/allergens_and_servings.dart';
part 'recipe_success_body/nutrition_per_serving.dart';
part 'recipe_empty_body.dart';
part 'recipe_success_body/info_widget.dart';
part 'recipe_success_body/recipe_description.dart';
part 'recipe_success_body/recipe_details_section.dart';
part 'recipe_success_body/ingredients_section.dart';
part 'recipe_success_body/instruction_section.dart';
class RecipeBody extends StatelessWidget {
  const RecipeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateRecipeCubit, CreateRecipeStates>(
      buildWhen: (previous, current) =>
          current is GenerateRecipeLoadingState ||
          current is GenerateRecipeSuccessState,
      builder: (context, state) {
        if (context.read<CreateRecipeCubit>().recipe!=null) {
          return _RecipeSuccessBody(context.read<CreateRecipeCubit>().recipe!);
        }
        else{
          return const _RecipeEmptyBody();
        }
      },
    );
  }
}