import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sql_app/src/presentation/index.dart';
import 'package:sql_app/src/shared/extensions/context_extensions.dart';

enum ButtonType {
  primary,
  secondary,
  tertiary,
}

enum IconAlignment {
  left,
  right,
}

class SqlAppButton extends StatelessWidget {
  final ButtonType _buttonType;
  final VoidCallback? onPressed;
  final IconAlignment iconAlignment;
  final String? svgIconPath;
  final String label;
  final bool isSizeByContent;
  final EdgeInsets? padding;
  final Color? foregroundColor;

  const SqlAppButton.primary({
    required this.label,
    required this.onPressed,
    this.iconAlignment = IconAlignment.right,
    this.svgIconPath,
    this.isSizeByContent = false,
    this.padding,
    super.key,
  })  : _buttonType = ButtonType.primary,
        foregroundColor = null;

  const SqlAppButton.secondary({
    required this.label,
    required this.onPressed,
    this.iconAlignment = IconAlignment.right,
    this.svgIconPath,
    this.isSizeByContent = false,
    this.padding,
    super.key,
  })  : _buttonType = ButtonType.secondary,
        foregroundColor = null;

  const SqlAppButton.tertiary({
    required this.label,
    required this.onPressed,
    this.iconAlignment = IconAlignment.right,
    this.svgIconPath,
    this.isSizeByContent = true,
    this.padding,
    this.foregroundColor,
    super.key,
  }) : _buttonType = ButtonType.tertiary;

  @override
  Widget build(BuildContext context) {
    final svgIconPath = this.svgIconPath;
    final isEnabled = onPressed != null;

    final icon = svgIconPath != null
        ? SvgPicture.asset(
            svgIconPath,
            height: 20,
            width: 20,
            colorFilter: ColorFilter.mode(
              isEnabled
                  ? (foregroundColor ?? _buttonType.foregroundColor)
                  : _buttonType.disabledForegroundColor,
              BlendMode.srcIn,
            ),
          )
        : null;

    final buttonContent = Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null && iconAlignment == IconAlignment.left)
          Padding(
            padding: const EdgeInsets.only(right: 4),
            child: icon,
          ),
        Text(
          label,
          textAlign: TextAlign.center,
          style: context.textTheme.autoButton.copyWith(
            color: isEnabled
                ? (foregroundColor ?? _buttonType.foregroundColor)
                : _buttonType.disabledForegroundColor,
          ),
        ),
        if (icon != null && iconAlignment == IconAlignment.right)
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: icon,
          ),
      ],
    );

    return MaterialButton(
      onPressed: onPressed,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      color: _buttonType.backgroundColor,
      disabledColor: _buttonType.disabledBackgroundColor,
      enableFeedback: false,
      disabledElevation: 0,
      focusElevation: 0,
      highlightElevation: 0,
      hoverElevation: 0,
      splashColor: _buttonType.splashBackgroundColor,
      minWidth: isSizeByContent ? 0 : double.maxFinite,
      padding: padding ?? _getPadding(_buttonType),
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: buttonContent,
    );
  }

  EdgeInsets _getPadding(ButtonType buttonType) {
    return _buttonType == ButtonType.tertiary
        ? const EdgeInsets.symmetric(horizontal: 4, vertical: 0)
        : const EdgeInsets.symmetric(horizontal: 24, vertical: 20);
  }
}

extension on ButtonType {
  Color get backgroundColor {
    return switch (this) {
      ButtonType.primary => SqlAppColors.primaryDefault,
      ButtonType.secondary => SqlAppColors.secondaryDefault,
      ButtonType.tertiary => SqlAppColors.transparent,
    };
  }

  Color get splashBackgroundColor {
    return switch (this) {
      ButtonType.primary => SqlAppColors.primaryOnTap,
      ButtonType.secondary => SqlAppColors.secondaryOnTap,
      ButtonType.tertiary => SqlAppColors.white,
    };
  }

  Color get disabledBackgroundColor {
    return switch (this) {
      ButtonType.primary => SqlAppColors.primaryDisable,
      ButtonType.secondary => Colors.transparent,
      ButtonType.tertiary => Colors.transparent,
    };
  }

  Color get foregroundColor {
    return switch (this) {
      ButtonType.primary => SqlAppColors.primaryText,
      ButtonType.secondary => SqlAppColors.secondaryText,
      ButtonType.tertiary => SqlAppColors.linkDefault,
    };
  }

  Color get disabledForegroundColor {
    return switch (this) {
      ButtonType.primary => SqlAppColors.primaryDisableText,
      ButtonType.secondary => SqlAppColors.secondaryDisableText,
      ButtonType.tertiary => SqlAppColors.linkDisableText,
    };
  }
}
