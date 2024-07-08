part of 'create_recipe_with_image_body.dart';

class _CuisinesSection extends StatelessWidget {
  const _CuisinesSection();

  @override
  Widget build(BuildContext context) {
    return _BackgroundContainer(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              context.local.modeFor,
              style: AppTextStyles.style16SemiBold.copyWith(
                color: Colors.grey[600],
                fontSize: 14.sp,
              ),
            ),
          ),
          verticalSpace(5),
          const _CuisineList(),
        ],
      ),
    );
  }
}

class _CuisineList extends StatelessWidget {
  const _CuisineList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateRecipeCubit, CreateRecipeStates>(
      buildWhen: (previous, current) =>
          current is ChooseCuisinesSuccessState ||
          current is ChooseCuisinesLoadingState ||
          current is ResetOptionsLoadingState ||
          current is ResetOptionsSuccessState,
      builder: (context, state) {
        return Wrap(
          children: List.generate(
            context.read<CreateRecipeCubit>().cuisines.length,
            (index) => _OptionContainer(
              option: context.read<CreateRecipeCubit>().cuisines[index],
              onTap: () {
                context.read<CreateRecipeCubit>().chooseCuisines(
                    context.read<CreateRecipeCubit>().cuisines[index]);
              },
            ),
          ),
        );
      },
    );
  }
}