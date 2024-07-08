part of 'create_recipe_with_image_body.dart';

class _OptionContainer extends StatefulWidget {
  final String title;
  final ValueChanged<(bool, String)>? changed;

  const _OptionContainer({required this.title, this.changed});

  @override
  State<_OptionContainer> createState() => _OptionContainerState();
}

class _OptionContainerState extends State<_OptionContainer> {
  late bool checked;

  @override
  void initState() {
    super.initState();
    checked = false;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          checked = !checked;
          widget.changed?.call((checked, widget.title));
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        decoration: BoxDecoration(
          color: context.theme.colorScheme.onSecondary,
          border: Border.all(
            width: 1,
            color: checked
                ? context.theme.colorScheme.primary
                : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (checked) ...[
              const Icon(
                Icons.done_outlined,
                size: 20,
              ),
              horizontalSpace(5),
            ],
            Text(widget.title, style: AppTextStyles.style14Normal),
          ],
        ),
      ),
    );
  }
}