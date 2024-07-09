part of 'recipe_body.dart';
class _RecipeSuccessBody extends StatelessWidget {
  const _RecipeSuccessBody();
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(overscroll: false),
      child: Scrollbar(
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: const [],
        ),
      ),
    );
  }
}