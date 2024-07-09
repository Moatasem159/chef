import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/utils/app_animated_icons.dart';
import 'package:chef/core/utils/app_text_styles.dart';
import 'package:chef/core/widgets/custom_lottie.dart';
import 'package:chef/features/recipe/logic/create_recipe_cubit/create_recipe_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

part 'recipe_success_body.dart';

part 'recipe_empty_body.dart';

class RecipeBody extends StatelessWidget {
  const RecipeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateRecipeCubit, CreateRecipeStates>(
      buildWhen: (previous, current) =>
          current is GenerateRecipeLoadingState ||
          current is GenerateRecipeSuccessState ||
          current is GenerateRecipeErrorState,
      builder: (context, state) {
        if (state is GenerateRecipeSuccessState) {
          return const _RecipeSuccessBody();
        }
        return const _RecipeEmptyBody();
      },
    );
  }
}