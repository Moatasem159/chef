part of 'create_recipe_with_image_body.dart';
class _DietaryRestrictionList extends StatelessWidget {
  const _DietaryRestrictionList();
  @override
  Widget build(BuildContext context) {
    final List<String> dietaryRestriction = [
      context.local.vegetarian,
      context.local.dairyFree,
      context.local.lowCarb,
      context.local.wheatAllergy,
      context.local.nutAllergy,
      context.local.soyAllergy,
      context.local.fishAllergy,
      context.local.keto,
    ];
    return Wrap(
      children: dietaryRestriction
          .map((String e) => _OptionContainer(
        title: e,
        changed: ((bool, String) value) {},
      )).toList(),
    );
  }
}