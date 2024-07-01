part of '../app_router.dart';

class SlideFromLeftToRight extends PageRouteBuilder {
  SlideFromLeftToRight({
    super.settings,
    required super.pageBuilder,
    super.transitionDuration = const Duration(milliseconds: 450),
    super.reverseTransitionDuration = const Duration(milliseconds: 450),
  }) : super(
          transitionsBuilder: (_, animation, __, child) {
            Tween<Offset> slide =
                Tween(begin: const Offset(-1, 0), end: const Offset(0, 0));
            CurvedAnimation slideCurve = CurvedAnimation(
                parent: animation, curve: Curves.fastEaseInToSlowEaseOut);
            return SlideTransition(
              position: slide.animate(slideCurve),
              child: child,
            );
          },
        );
}