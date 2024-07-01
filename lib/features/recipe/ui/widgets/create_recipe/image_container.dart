part of 'create_recipe_with_image_body.dart';
class _ImageContainer extends StatelessWidget {
  final String? image;

  const _ImageContainer({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
      decoration: BoxDecoration(
          color: context.theme.colorScheme.onSecondary,
          borderRadius: BorderRadius.circular(8)),
      child: image == null
          ? const Icon(
        Icons.add_photo_alternate_outlined,
        size: 40,
      )
          : Image(
        image: AssetImage(image!),
      ),
    );
  }
}