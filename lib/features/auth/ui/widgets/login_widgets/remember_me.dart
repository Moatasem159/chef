part of 'login_body.dart';

class _RememberMe extends StatelessWidget {
  final bool saveLogin;
  final ValueChanged<bool?> onchange;
  const _RememberMe(this.saveLogin, this.onchange);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.2,
          child: Checkbox(
            value: saveLogin,
            checkColor: Colors.white,
            side: const BorderSide(color: Colors.white),
            visualDensity: VisualDensity.compact,
            fillColor: WidgetStateProperty.all(saveLogin?context.theme.primaryColor:Colors.transparent),
            onChanged:onchange,
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