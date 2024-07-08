part of 'create_recipe_with_image_body.dart';
class _BackgroundContainer extends StatelessWidget {
  final Widget child;
  const _BackgroundContainer(this.child);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: child,
    );
  }
}