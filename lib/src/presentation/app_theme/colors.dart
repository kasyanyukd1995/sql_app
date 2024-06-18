import 'package:flutter/material.dart';

abstract class SqlAppColors {
  ///Text and Icons
  static const textPrimary = Color(0xFF161616);
  static const white = Color(0xFFFFFFFF);
  static const textSecondary = Color(0xFF9599A4);
  static const textDisable = Color(0xFFC7CAD0);
  static const textError = Color(0xFFF13131);

  ///Button
  //primary
  static const primaryDefault = Color(0xFF2A313D);
  static const primaryOnTap = Color(0xFF1A212C);
  static const primaryText = Color(0xFFFFFFFF);
  static const primaryDisable = Color(0xFFF4F5F9);
  static const primaryDisableText = Color(0xFF9599A4);

  //secondary
  static const secondaryDefault = Color(0xFFF4F5F9);
  static const secondaryOnTap = Color(0xFFEAECF4);
  static const secondaryText = Color(0xFF161616);
  static const secondaryDisable = Color(0xFFF4F5F9);
  static const secondaryDisableText = Color(0xFF9599A4);

  //link
  static const linkDefault = Color(0xFF7F84EF);
  static const linkOnTap = Color(0xFF615FE7);
  static const linkDisableText = Color(0xFF9599A4);

  ///BG

  static const bgWhite = Color(0xFFFFFFFF);
  static const bgGrey = Color(0xFFF4F5F9);
  static const bgAccent = Color(0xFF7F84EF);

  //Custom

  static const transparent = Colors.transparent;
  static const black = Colors.black;
  static const main = Color(0xFF7F84EF);
  static const accent = Color(0xFF83CB57);
}
