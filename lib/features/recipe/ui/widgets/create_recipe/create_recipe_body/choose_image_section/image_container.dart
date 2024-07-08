part of '../create_recipe_with_image_body.dart';

class _ImageContainer extends StatelessWidget {
  final XFile? image;

  const _ImageContainer({this.image});

  @override
  Widget build(BuildContext context) {
    if (image != null && image!.path.isNotEmpty) {
      return Container(
        width: 95.w,
        height: 95.h,
        alignment: Alignment.topRight,
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: FileImage(File(image!.path)),
          ),
        ),
        child: GestureDetector(
          onTap: () {
            context.read<CreateRecipeCubit>().removeImage(image!);
          },
          child: const Icon(Icons.remove_circle),
        ),
      );
    } else {
      return GestureDetector(
        onTap: () {
          showAdaptiveDialog(
            context: context,
            builder: (_) {
              return BlocProvider.value(
                value: context.read<CreateRecipeCubit>(),
                child: const ChooseImageDialog(),
              );
            },
          );
        },
        child: Container(
          width: 95.w,
          height: 95.h,
          decoration: BoxDecoration(
            color: context.theme.colorScheme.onSecondary,
            borderRadius: BorderRadius.circular(8),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: const Icon(
            Icons.add_photo_alternate_outlined,
            size: 50,
          ),
        ),
      );
    }
  }
}