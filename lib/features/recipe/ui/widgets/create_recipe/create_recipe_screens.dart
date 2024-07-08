import 'package:chef/features/recipe/logic/create_recipe_cubit/create_recipe_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateRecipeScreens extends StatelessWidget {
  const CreateRecipeScreens({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateRecipeCubit, CreateRecipeStates>(
      buildWhen: (previous, current) =>
          current is ChangePageLoadingState ||
          current is ChangePageSuccessState,
      builder: (context, state) {
        return context
            .read<CreateRecipeCubit>()
            .screens[context.read<CreateRecipeCubit>().currentIndex];
      },
    );
  }
}