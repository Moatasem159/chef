import 'package:chef/core/router/app_router.dart';
import 'package:chef/core/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChefBot extends StatelessWidget {
  final AppRouter appRouter;
  const ChefBot({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 736),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.router,
        initialRoute: Routes.initialRoute,
        navigatorKey: AppRouter.navigatorKey,
        themeMode: ThemeMode.system,
      ),
    );
  }
}