part of '../create_recipe_with_image_body.dart';

class _ResetButton extends StatelessWidget {
  const _ResetButton();

  @override
  Widget build(BuildContext context) {
    return MainButtonWithText(
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      onTap:context.read<CreateRecipeCubit>().resetPrompt,
      child: Row(
        children: [
          const Icon(Icons.restart_alt_rounded),
          horizontalSpace(5),
          Text(context.locale.reset),
        ],
      ),
    );
  }
}