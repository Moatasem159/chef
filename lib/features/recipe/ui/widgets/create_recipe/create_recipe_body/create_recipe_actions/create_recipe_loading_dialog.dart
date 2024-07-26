import 'package:chef/core/errors/error_handler.dart';
import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/utils/app_animated_icons.dart';
import 'package:chef/core/widgets/custom_lottie.dart';
import 'package:chef/features/recipe/logic/create_recipe_cubit/create_recipe_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateRecipeLoadingDialog extends StatelessWidget {
  const CreateRecipeLoadingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateRecipeCubit, CreateRecipeStates>(
      listener: (context, state) {
        if (state is GenerateRecipeSuccessState) {
          Future.delayed(const Duration(milliseconds: 1000)).then(
            (_) {
              context.pop();
              context.read<CreateRecipeCubit>().changePage(1);
            },
          );
        }
        if (state is GenerateRecipeErrorState) {
          Future.delayed(const Duration(milliseconds: 1600)).then(
            (value) {
              context.pop();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    ErrorHandler.handleErrorMessages(context, state.message),
                  ),
                ),
              );
            },
          );
        }
      },
      child: PopScope(
        canPop: false,
        child: Transform.scale(
          scaleX: 0.5,
          scaleY: 0.5,
          child: AlertDialog.adaptive(
            contentPadding: const EdgeInsets.all(30),
            content: BlocBuilder<CreateRecipeCubit, CreateRecipeStates>(
              buildWhen: (previous, current) =>
                  current is GenerateRecipeLoadingState ||
                  current is GenerateRecipeSuccessState ||
                  current is GenerateRecipeErrorState,
              builder: (context, state) {
                if (state is GenerateRecipeLoadingState) {
                  return CustomLottie(key: const ValueKey("loading"),icon: AppAnimatedIcons.recipeLoading(context));
                } else if (state is GenerateRecipeSuccessState) {
                  return CustomLottie(key:const ValueKey("success"),icon: AppAnimatedIcons.done(context));
                }
                return CustomLottie(key:const ValueKey("error"),icon: AppAnimatedIcons.error(context));
              },
            ),
          ),
        ),
      ),
    );
  }
}