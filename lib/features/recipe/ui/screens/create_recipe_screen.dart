import 'package:chef/core/di/dependency_injection.dart';
import 'package:chef/core/themes/app_theme.dart';
import 'package:chef/features/recipe/logic/create_recipe_cubit/create_recipe_cubit.dart';
import 'package:chef/features/recipe/ui/widgets/create_recipe_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CreateRecipeWithImageScreen extends StatelessWidget {
  const CreateRecipeWithImageScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreateRecipeCubit>(
      create: (context) => CreateRecipeCubit(getIt()),
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: AppTheme.systemUiOverlayStyle(context),
        child: const CreateRecipeScreenBody(),
      ),
    );
  }
}