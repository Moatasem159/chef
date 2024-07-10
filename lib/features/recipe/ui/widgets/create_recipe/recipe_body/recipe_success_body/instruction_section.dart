part of '../recipe_body.dart';

class _InstructionSection extends StatelessWidget {
  const _InstructionSection({required this.recipe});

  final RecipeResponseModel recipe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.locale.instruction,
            style: AppTextStyles.style18SemiBold,
          ),
          Column(
            children: List.generate(
              recipe.getRecipe(context).instructions.length,
              (index) => _InfoWidget(
                value: recipe.getRecipe(context).instructions[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}