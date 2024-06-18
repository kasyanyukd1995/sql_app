import 'package:flutter/material.dart';
import 'package:sql_app/features/localization/app_localizations.dart';

extension ContextExt on BuildContext {
  MediaQueryData get _mediaQueryData => MediaQuery.of(this);
  Size get screenSize => _mediaQueryData.size;
  double get screenWidth => screenSize.width;
  double get screenHeight => screenSize.height;
  EdgeInsets get screenViewPadding => _mediaQueryData.viewPadding;
  EdgeInsets get screenViewInsets => _mediaQueryData.viewInsets;

  //loc
  AppLocalizations get s => AppLocalizations.of(this);

  //theme
  TextTheme get textTheme => Theme.of(this).textTheme;
}
