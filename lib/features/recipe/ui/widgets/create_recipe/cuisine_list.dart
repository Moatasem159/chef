part of 'create_recipe_with_image_body.dart';
class _CuisineList extends StatelessWidget {
  const _CuisineList();
  @override
  Widget build(BuildContext context) {
    final List<String> dietaryRestriction = [
      context.local.italian,
      context.local.indian,
      context.local.egyptian,
      context.local.chinese,
      context.local.french,
      context.local.japanese,
      context.local.american,
      context.local.turkish,
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