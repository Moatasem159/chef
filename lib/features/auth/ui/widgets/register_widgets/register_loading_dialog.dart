part of 'register_body.dart';

class _RegisterLoadingDialog extends StatelessWidget {
  const _RegisterLoadingDialog();

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterStates>(
      listener: (context, state) {
        if (state is RegisterSuccessState) {
          Future.delayed(const Duration(milliseconds: 700)).then(
            (_) {
              context.pop();
              context.pushNamedAndRemoveUntil(Routes.loginRoute,
                  predicate: (route) => false);
            },
          );
        }
        if (state is RegisterErrorState) {
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
        canPop: true,
        child: Transform.scale(
          scaleX: 0.4,
          scaleY: 0.4,
          child: AlertDialog.adaptive(
            contentPadding: const EdgeInsets.all(30),
            content: BlocBuilder<RegisterCubit, RegisterStates>(
              buildWhen: (previous, current) =>
                  current is RegisterLoadingState ||
                  current is RegisterSuccessState ||
                  current is RegisterErrorState,
              builder: (context, state) {
                return FittedBox(
                  fit: BoxFit.cover,
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 700),
                    child: state is RegisterLoadingState
                        ? const CircularProgressIndicator(
                            strokeWidth: 1.5,
                          )
                        : state is RegisterSuccessState
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