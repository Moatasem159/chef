part of 'login_body.dart';
class _LoginLoadingDialog extends StatelessWidget {
  const _LoginLoadingDialog();

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginStates>(
      listener: (context, state) {
        if (state is LoginSuccessState) {
          Future.delayed(const Duration(milliseconds: 700)).then(
                (_) {
              context.pop();
              context.pushNamedAndRemoveUntil(Routes.homeRoute,
                  predicate: (route) => false);
            },
          );
        }
        if (state is LoginErrorState) {
          Future.delayed(const Duration(milliseconds: 800)).then(
                (value) {
              context.pop();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    ErrorHandler.handleErrorMessages(context, state.message),
                  ),
                ),
              );
            },
          );
        }
      },
      child: PopScope(
        canPop: false,
        child: Transform.scale(
          scaleX: 0.5,
          scaleY: 0.5,
          child: AlertDialog.adaptive(
            contentPadding: const EdgeInsets.all(30),
            content: BlocBuilder<LoginCubit, LoginStates>(
              buildWhen: (previous, current) =>
              current is LoginLoadingState ||
                  current is LoginSuccessState ||
                  current is LoginErrorState,
              builder: (context, state) {
                return FittedBox(
                  fit: BoxFit.cover,
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 700),
                    child: state is LoginLoadingState
                        ? const CircularProgressIndicator(
                      strokeWidth: 1.5,
                    )
                        : state is LoginSuccessState
                        ? const Icon(Icons.done_outlined)
                        : const Icon(Icons.error_outline),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}