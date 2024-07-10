import 'package:chef/core/errors/error_handler.dart';
import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/utils/app_text_styles.dart';
import 'package:chef/features/recipe/logic/create_recipe_cubit/create_recipe_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateRecipeAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const CreateRecipeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateRecipeCubit, CreateRecipeStates>(
      buildWhen: (previous, current) =>
          current is ChangePageLoadingState ||
          current is ChangePageSuccessState ||
          current is SaveRecipeErrorState ||
          current is SaveRecipeSuccessState ||
          current is RemoveRecipeSuccessState ||
          current is RemoveRecipeErrorState ||
          current is SaveRecipeLoadingState,
      builder: (context, state) {
        return AppBar(
          leadingWidth: 45,
          iconTheme: context.theme.iconTheme.copyWith(
            color: context.read<CreateRecipeCubit>().currentIndex == 1 &&
                    context.read<CreateRecipeCubit>().recipe != null
                ? Colors.white
                : context.theme.appBarTheme.iconTheme!.color,
          ),
          backgroundColor:
              context.read<CreateRecipeCubit>().currentIndex == 1 &&
                  context.read<CreateRecipeCubit>().recipe != null
                  ? context.theme.primaryColor
                  : context.theme.appBarTheme.backgroundColor,
          titleTextStyle: AppTextStyles.style16SemiBold.copyWith(
            color: (context.read<CreateRecipeCubit>().currentIndex == 1 &&
                        context.read<CreateRecipeCubit>().recipe != null) ||
                    context.isDark
                ? Colors.white
                : Colors.black,
          ),
          title: Text(
            context.read<CreateRecipeCubit>().currentIndex == 0
                ? context.locale.createRecipe
                : context.locale.recipe,
          ),
          actions: [
            if (context.read<CreateRecipeCubit>().currentIndex == 1 &&
                context.read<CreateRecipeCubit>().recipe != null)
              BlocListener<CreateRecipeCubit, CreateRecipeStates>(
                listener: (context, state) {
                  if (state is SaveRecipeSuccessState) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(context.locale.savedRecipeMsg)),
                    );
                  }
                  if (state is RemoveRecipeSuccessState) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(context.locale.removeRecipeMsg)),
                    );
                  }
                  if (state is SaveRecipeErrorState) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text(ErrorHandler.handleErrorMessages(
                              context, state.message))),
                    );
                  }
                  if (state is RemoveRecipeErrorState) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text(ErrorHandler.handleErrorMessages(
                              context, state.message))),
                    );
                  }
                },
                child: IconButton(
                  onPressed: context.read<CreateRecipeCubit>().saveRecipe,
                  icon: Icon(
                    context.read<CreateRecipeCubit>().saved
                        ? Icons.bookmark
                        : Icons.bookmark_add_outlined,
                  ),
                ),
              )
          ],
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 60);
}