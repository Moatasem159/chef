import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
extension SizeExtension on BuildContext {
  double get screenHeight => MediaQuery.sizeOf(this).height;

  double get screenWidth => MediaQuery.sizeOf(this).width;
}

extension ThemesExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  bool get isDark=>theme.brightness==Brightness.dark;
}

extension LocalizationExtensions on BuildContext {
  AppLocalizations get local => AppLocalizations.of(this)!;
}

extension NavigationExtentions on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) =>
      Navigator.of(this).pushNamed(routeName, arguments: arguments);

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) =>
      Navigator.of(this).pushReplacementNamed(routeName, arguments: arguments);

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
          {Object? arguments, required RoutePredicate predicate}) =>
      Navigator.of(this)
          .pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);

  void pop() => Navigator.of(this).pop();
}