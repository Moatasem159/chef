part of'main_drawer.dart';
class _DrawerTitle extends StatelessWidget {
  const _DrawerTitle();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: 18,vertical: 15),
      child: Text(context.locale.title,style: AppTextStyles.style18SemiBold),
    );
  }
}