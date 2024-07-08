import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/utils/app_text_styles.dart';
import 'package:chef/features/recipe/logic/create_recipe_cubit/create_recipe_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CreateRecipeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CreateRecipeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 45,
      titleTextStyle: AppTextStyles.style16SemiBold.copyWith(
        color: context.isDark ? Colors.white : Colors.black,
      ),
      title: BlocBuilder<CreateRecipeCubit, CreateRecipeStates>(
        buildWhen: (previous, current) =>
        current is ChangePageLoadingState ||
            current is ChangePageSuccessState,
        builder: (context, state) {
          return Text(
            context.read<CreateRecipeCubit>().currentIndex == 0
                ? context.local.createRecipe
                : context.local.recipe,
          );
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 60);
}