part of 'login_body.dart';
class _OrSignWith extends StatelessWidget {
  const _OrSignWith();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1,
            margin: const EdgeInsets.symmetric(horizontal: 6),
            color: Colors.grey[400]
          ),
        ),
        Text(context.local.orSignIn),
        Expanded(
          child: Container(
            height: 1,
            margin: const EdgeInsets.symmetric(horizontal: 6),
            color: Colors.grey[400]
          ),
        ),
      ],
    );
  }
}