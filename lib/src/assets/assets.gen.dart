/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Manrope-Bold.ttf
  String get manropeBold => 'assets/fonts/Manrope-Bold.ttf';

  /// File path: assets/fonts/Manrope-ExtraBold.ttf
  String get manropeExtraBold => 'assets/fonts/Manrope-ExtraBold.ttf';

  /// File path: assets/fonts/Manrope-ExtraLight.ttf
  String get manropeExtraLight => 'assets/fonts/Manrope-ExtraLight.ttf';

  /// File path: assets/fonts/Manrope-Light.ttf
  String get manropeLight => 'assets/fonts/Manrope-Light.ttf';

  /// File path: assets/fonts/Manrope-Medium.ttf
  String get manropeMedium => 'assets/fonts/Manrope-Medium.ttf';

  /// File path: assets/fonts/Manrope-Regular.ttf
  String get manropeRegular => 'assets/fonts/Manrope-Regular.ttf';

  /// File path: assets/fonts/Manrope-SemiBold.ttf
  String get manropeSemiBold => 'assets/fonts/Manrope-SemiBold.ttf';

  /// List of all assets
  List<String> get values => [
        manropeBold,
        manropeExtraBold,
        manropeExtraLight,
        manropeLight,
        manropeMedium,
        manropeRegular,
        manropeSemiBold
      ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/QAR.svg
  SvgGenImage get qar => const SvgGenImage('assets/icons/QAR.svg');

  /// File path: assets/icons/chevron-left.svg
  SvgGenImage get chevronLeft => const SvgGenImage('assets/icons/chevron-left.svg');

  /// File path: assets/icons/ci_qr-code.svg
  SvgGenImage get ciQrCode => const SvgGenImage('assets/icons/ci_qr-code.svg');

  /// File path: assets/icons/double check.svg
  SvgGenImage get doubleCheck => const SvgGenImage('assets/icons/double check.svg');

  /// File path: assets/icons/full_logo.svg
  SvgGenImage get fullLogo => const SvgGenImage('assets/icons/full_logo.svg');

  /// File path: assets/icons/mi_user.svg
  SvgGenImage get miUser => const SvgGenImage('assets/icons/mi_user.svg');

  /// File path: assets/icons/ph_sparkle-fill.svg
  SvgGenImage get phSparkleFill => const SvgGenImage('assets/icons/ph_sparkle-fill.svg');

  /// File path: assets/icons/plus.svg
  SvgGenImage get plus => const SvgGenImage('assets/icons/plus.svg');

  /// File path: assets/icons/polygon.svg
  SvgGenImage get polygon => const SvgGenImage('assets/icons/polygon.svg');

  /// File path: assets/icons/qrcode-black.svg
  SvgGenImage get qrcodeBlack => const SvgGenImage('assets/icons/qrcode-black.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        qar,
        chevronLeft,
        ciQrCode,
        doubleCheck,
        fullLogo,
        miUser,
        phSparkleFill,
        plus,
        polygon,
        qrcodeBlack
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/car.png
  AssetGenImage get car => const AssetGenImage('assets/images/car.png');

  /// File path: assets/images/icon.png
  AssetGenImage get icon => const AssetGenImage('assets/images/icon.png');

  /// File path: assets/images/qrcode.png
  AssetGenImage get qrcode => const AssetGenImage('assets/images/qrcode.png');

  /// List of all assets
  List<AssetGenImage> get values => [car, icon, qrcode];
}

class SqlAppAssets {
  SqlAppAssets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
