part of 'login_body.dart';

class _RememberMe extends StatelessWidget {
  const _RememberMe();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.3,
          child: Checkbox(
            value: false,
            side: const BorderSide(color: Colors.white),
            visualDensity: VisualDensity.compact,
            fillColor: WidgetStateProperty.all(Colors.transparent),
            onChanged: (value) {},
          ),
        ),
        Text(
          context.local.rememberMe,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}