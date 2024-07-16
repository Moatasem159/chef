import 'package:chef/core/themes/app_theme.dart';
import 'package:chef/features/recipe/ui/widgets/discover_screen/discover_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppTheme.systemUiOverlayStyle(context),
      child: const SafeArea(
        child: Scaffold(
          drawerEnableOpenDragGesture: false,
          drawer: Drawer(),
          body: DiscoverScreenBody(),
        ),
      ),
    );
  }
}