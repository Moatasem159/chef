part of 'create_recipe_with_image_body.dart';

class _OptionContainer extends StatelessWidget {
  final OptionsModel option;
  final VoidCallback onTap;
  const _OptionContainer({required this.option, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        decoration: BoxDecoration(
          color: context.theme.colorScheme.onSecondary,
          border: Border.all(
            width: 1,
            color: option.isSelected
                ? context.theme.colorScheme.primary
                : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (option.isSelected) ...[
              const Icon(
                Icons.done_outlined,
                size: 20,
              ),
              horizontalSpace(5),
            ],
            Text(option.name, style: AppTextStyles.style14Normal),
          ],
        ),
      ),
    );
  }
}