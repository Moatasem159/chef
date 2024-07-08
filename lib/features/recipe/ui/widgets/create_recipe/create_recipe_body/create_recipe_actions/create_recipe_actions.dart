part of '../create_recipe_with_image_body.dart';

class _CreateRecipeActions extends StatelessWidget {
  const _CreateRecipeActions();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _ResetButton(),
        _SubmitButton(),
      ],
    );
  }
}