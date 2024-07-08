import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/extension/spacing.dart';
import 'package:chef/core/utils/app_text_styles.dart';
import 'package:chef/features/recipe/logic/create_recipe_cubit/create_recipe_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

part 'dialog_tile.dart';

class ChooseImageDialog extends StatelessWidget {
  const ChooseImageDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateRecipeCubit, CreateRecipeStates>(
      listener: (context, state) {
       if(state is PickImageSuccessState)
         {
           context.pop();
         }
      },
      child: AlertDialog(
        contentPadding: EdgeInsets.zero,
        titlePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: Row(
          children: [
            const Icon(Icons.photo_library_outlined),
            horizontalSpace(14),
            Text(
              context.local.chooseImage,
              style: AppTextStyles.style14Normal,
            ),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _DialogTile(
              onTap: () {
                context.read<CreateRecipeCubit>().picImage(ImageSource.camera);
              },
              title: context.local.fromCamera,
              icon: Icons.camera,
            ),
            verticalSpace(5),
            _DialogTile(
              onTap: () {
                context.read<CreateRecipeCubit>().picImage(ImageSource.gallery);
              },
              title: context.local.fromGallery,
              icon: Icons.image_outlined,
            ),
          ],
        ),
      ),
    );
  }
}