import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sql_app/src/presentation/index.dart';
import 'package:sql_app/src/shared/extensions/context_extensions.dart';

const _kSnackBarDuration = Duration(seconds: 3);

class InfoSnackBar {
  static SnackBar createInfoSnack({
    required String title,
    required BuildContext context,
  }) {
    return SnackBar(
      duration: _kSnackBarDuration,
      backgroundColor: SqlAppColors.textPrimary,
      elevation: 6,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      content: Row(
        children: [
          const Icon(
            Icons.info,
            size: 20,
            color: SqlAppColors.white,
          ),
          const Gap(8),
          Expanded(
            child: Text(
              title,
              style: context.textTheme.bodySmall?.copyWith(
                color: SqlAppColors.white,
              ),
            ),
          ),
        ],
      ),
      behavior: SnackBarBehavior.floating,
    );
  }
}
