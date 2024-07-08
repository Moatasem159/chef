part of '../create_recipe_with_image_body.dart';

class _IngredientsSection extends StatelessWidget {
  const _IngredientsSection();

  @override
  Widget build(BuildContext context) {
    return _BackgroundContainer(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              context.local.haveTheseIngredients,
              style: AppTextStyles.style16SemiBold
                  .copyWith(color: Colors.grey[600]),
            ),
          ),
          verticalSpace(5),
          const _ImageList(),
        ],
      ),
    );
  }
}

class _ImageList extends StatelessWidget {
  const _ImageList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateRecipeCubit, CreateRecipeStates>(
      buildWhen: (previous, current) =>
          current is PickImageSuccessState ||
          current is PickImageLoadingState ||
          current is RemoveImageSuccessState ||
          current is RemoveImageLoadingState ||
          current is ResetOptionsLoadingState ||
          current is ResetOptionsSuccessState,
      builder: (context, state) {
        return Wrap(
          children: List.generate(
            growable: true,
            context.read<CreateRecipeCubit>().images.length,
            (index) => _ImageContainer(
              image: context.read<CreateRecipeCubit>().images[index],
            ),
          ),
        );
      },
    );
  }
}