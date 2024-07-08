import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/widgets/custom_bottom_nav_bar_item.dart';
import 'package:chef/features/recipe/logic/create_recipe_cubit/create_recipe_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateRecipeBottomNavBar extends StatelessWidget {
  const CreateRecipeBottomNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateRecipeCubit, CreateRecipeStates>(
      buildWhen: (previous, current) =>
      current is ChangePageLoadingState ||
          current is ChangePageSuccessState,
      builder: (context, state) {
        return Theme(
          data: context.theme.copyWith(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            splashFactory: InkSplash.splashFactory,
          ),
          child: BottomNavigationBar(
            currentIndex: context.read<CreateRecipeCubit>().currentIndex,
            onTap: (value) {
              context.read<CreateRecipeCubit>().changePage(value);
            },
            items: [
              BottomNavigationBarItem(
                icon: CustomBottomNavigationBarIcon(
                  currentIndex: context.read<CreateRecipeCubit>().currentIndex,
                  icon: Icons.info_outline_rounded,
                  iconIndex: 0,
                ),
                label: context.local.info,
              ),
              BottomNavigationBarItem(
                icon: CustomBottomNavigationBarIcon(
                  currentIndex: context.read<CreateRecipeCubit>().currentIndex,
                  icon: Icons.insert_drive_file_outlined,
                  iconIndex: 1,
                ),
                label: context.local.recipe,
              ),
            ],
          ),
        );
      },
    );
  }
}