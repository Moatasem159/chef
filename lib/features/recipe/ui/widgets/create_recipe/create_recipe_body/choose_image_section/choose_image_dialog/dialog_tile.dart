part of 'choose_image_dialog.dart';
class _DialogTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  const _DialogTile({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      onTap: onTap,
      leading:Icon(icon),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      title: Text(title, style: AppTextStyles.style14SemiBold),
    );
  }
}