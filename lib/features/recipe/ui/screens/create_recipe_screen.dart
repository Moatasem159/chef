import 'package:chef/core/di/dependency_injection.dart';
import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/themes/app_theme.dart';
import 'package:chef/features/recipe/logic/create_recipe_cubit/create_recipe_cubit.dart';
import 'package:chef/features/recipe/ui/widgets/create_recipe/create_recipe_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateRecipeWithImageScreen extends StatelessWidget {
  const CreateRecipeWithImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreateRecipeCubit>(
      create: (_) => CreateRecipeCubit(getIt())
        ..getIngredients(context)
        ..getDietaryRestriction(context)
        ..getCuisines(context),
      child: Builder(
        builder: (context) {
          return BlocBuilder<CreateRecipeCubit, CreateRecipeStates>(
            builder: (context, state) {
              return AnnotatedRegion<SystemUiOverlayStyle>(
                value: context.read<CreateRecipeCubit>().currentIndex == 1 &&
                        context.read<CreateRecipeCubit>().recipe != null
                    ? AppTheme.systemUiOverlayStyle(context).copyWith(
                        statusBarIconBrightness: Brightness.light,
                        statusBarColor: context.theme.primaryColor,
                      )
                    : AppTheme.systemUiOverlayStyle(context),
                child: const CreateRecipeScreenBody(),
              );
            },
          );
        },
      ),
    );
  }
}