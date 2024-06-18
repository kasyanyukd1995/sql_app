import 'package:flutter/material.dart';
import 'package:sql_app/src/assets/fonts.gen.dart';
import 'package:sql_app/src/presentation/index.dart';

//Value	Common weight name
// 100	Thin (Hairline)
// 200	Extra Light (Ultra Light)
// 300	Light
// 400	Normal (Regular)
// 500	Medium
// 600	Semi Bold (Demi Bold)
// 700	Bold
// 800	Extra Bold (Ultra Bold)
// 900	Black (Heavy)
// 950	Extra Black (Ultra Black)

extension SqlAppStyles on TextTheme {
  TextStyle get _default => const TextStyle(
        fontFamily: FontFamily.manrope,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: SqlAppColors.textPrimary,
      );

  TextStyle get title => _default.copyWith(
        fontSize: 26,
        fontWeight: FontWeight.w700,
        height: 32 / 26,
      );

  ///paragraph

  TextStyle get paragraphLRegular => _default.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 24 / 16,
      );

  TextStyle get paragraphLStrong => _default.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        height: 24 / 16,
      );

  TextStyle get paragraphMRegular => _default.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 22 / 14,
      );

  TextStyle get paragraphMStrong => _default.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        height: 22 / 14,
      );

  TextStyle get paragraphSRegular => _default.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 14 / 12,
      );

  TextStyle get paragraphSStrong => _default.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        height: 14 / 12,
      );

  TextStyle get paragraphXSRegular => _default.copyWith(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        height: 12 / 10,
      );

  TextStyle get autoButton => _default.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        height: 20 / 16,
      );
}
