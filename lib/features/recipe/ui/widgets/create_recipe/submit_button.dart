part of 'create_recipe_with_image_body.dart';

class _SubmitButton extends StatelessWidget {
  const _SubmitButton();

  @override
  Widget build(BuildContext context) {
    return MainButtonWithText(
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      onTap: () {
        context.read<CreateRecipeCubit>().generateRecipe();
        showAdaptiveDialog(
          barrierDismissible: false,
          context: context,
          builder: (_) {
            return BlocProvider<CreateRecipeCubit>.value(
              value: context.read<CreateRecipeCubit>(),
              child: const CreateRecipeLoadingDialog()
            );
          },
        );
      },
      child: Row(
        children: [
          const Icon(Icons.send_rounded),
          horizontalSpace(5),
          Text(context.local.submit),
        ],
      ),
    );
  }
}