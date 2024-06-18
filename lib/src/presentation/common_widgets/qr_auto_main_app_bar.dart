import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:sql_app/src/assets/assets.gen.dart';
import 'package:sql_app/src/presentation/index.dart';
import 'package:sql_app/src/shared/extensions/context_extensions.dart';

const _kAppBarHeight = 72.0;

enum MarkComponentType {
  trial,
  update,
}

class SqlAppMainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onQrCodeTap;
  final VoidCallback onProfileTap;
  final MarkComponentType? markComponentType;

  @override
  final Size preferredSize;

  const SqlAppMainAppBar({
    required this.markComponentType,
    required this.onQrCodeTap,
    required this.onProfileTap,
    super.key,
  }) : preferredSize = const Size.fromHeight(_kAppBarHeight);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SizedBox(
          height: _kAppBarHeight,
          child: Row(
            children: [
              SqlAppAssets.icons.fullLogo.svg(height: 24),
              if (markComponentType != null) ...[
                const Gap(12),
                _MarkComponent(markComponentType: markComponentType!)
              ],
              const Spacer(),
              HeaderIconButton(
                svgIconPath: SqlAppAssets.icons.ciQrCode.keyName,
                onTap: onQrCodeTap,
              ),
              const Gap(12),
              HeaderIconButton(
                svgIconPath: SqlAppAssets.icons.miUser.keyName,
                onTap: onProfileTap,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MarkComponent extends StatelessWidget {
  final MarkComponentType markComponentType;

  const _MarkComponent({
    required this.markComponentType,
  });

  @override
  Widget build(BuildContext context) {
    switch (markComponentType) {
      case MarkComponentType.trial:
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 4,
          ),
          decoration: BoxDecoration(
            color: SqlAppColors.bgWhite,
            border: Border.all(color: SqlAppColors.accent),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            context.s.appBarTrial,
            style: context.textTheme.paragraphSRegular,
          ),
        );
      case MarkComponentType.update:
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 4.31,
          ),
          decoration: BoxDecoration(
            color: SqlAppColors.textPrimary,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Text(
                context.s.updateAvailable,
                style: context.textTheme.paragraphSStrong.copyWith(color: SqlAppColors.white),
              ),
              const Gap(4),
              SqlAppAssets.icons.phSparkleFill.svg(),
            ],
          ),
        );
    }
  }
}
