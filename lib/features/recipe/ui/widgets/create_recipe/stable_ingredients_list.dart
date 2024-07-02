part of 'create_recipe_with_image_body.dart';
class _StableIngredientsList extends StatelessWidget {
  const _StableIngredientsList();
  @override
  Widget build(BuildContext context) {
    final List<String> ingredients = [
      context.local.soil,
      context.local.butter,
      context.local.flour,
      context.local.salt,
      context.local.pepper,
      context.local.sugar,
      context.local.milk,
      context.local.vinegar,
    ];
    return Wrap(
      children: ingredients
          .map((String e) => _OptionContainer(
        title: e,
        changed: ((bool, String) value) {},
      )).toList(),
    );
  }
}