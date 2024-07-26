import 'package:chef/core/extension/context_extensions.dart';
import 'package:chef/core/extension/spacing.dart';
import 'package:chef/core/models/drawer_item_model.dart';
import 'package:chef/core/router/routes.dart';
import 'package:chef/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
part 'drawer_builder.dart';
part 'drawer_title.dart';
part 'drawer_tile.dart';
part 'drawer_tiles_list.dart';
class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: context.screenWidth / 1.16,
      child: const _DrawerBuilder(),
    );
  }
}