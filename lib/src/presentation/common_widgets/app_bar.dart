import 'package:flutter/material.dart';

import 'package:sql_app/src/assets/assets.gen.dart';
import 'package:sql_app/src/presentation/index.dart';
import 'package:sql_app/src/shared/extensions/context_extensions.dart';

class SqlAppAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const SqlAppAppBar({
    super.key,
  }) : preferredSize = const Size.fromHeight(42);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SizedBox(
          height: 42,
          child: Row(
            children: [
              SqlAppButton.tertiary(
                label: context.s.backButton,
                onPressed: () => Navigator.of(context).maybePop(),
                iconAlignment: IconAlignment.left,
                isSizeByContent: true,
                padding: const EdgeInsets.all(12),
                svgIconPath: SqlAppAssets.icons.chevronLeft.keyName,
                foregroundColor: SqlAppColors.textPrimary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
