part of 'create_recipe_with_image_body.dart';
class _AddMoreContextSection extends StatelessWidget {
  const _AddMoreContextSection();

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey, width: 1),
        ),
        child: TextFormField(
          maxLines: null,
          decoration:InputDecoration(
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            constraints: BoxConstraints(
              minHeight: 120.h,
              maxHeight:160.h,
            ),
            hintText: context.local.addAdditionalContext,
            fillColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}