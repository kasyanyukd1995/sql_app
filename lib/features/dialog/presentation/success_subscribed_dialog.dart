import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sql_app/src/presentation/index.dart';
import 'package:sql_app/src/shared/extensions/context_extensions.dart';

class SuccessSubscribedDialog extends StatelessWidget {
  const SuccessSubscribedDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: SqlAppColors.bgWhite,
      elevation: 0,
      insetPadding: const EdgeInsets.symmetric(horizontal: 14),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.s.subscriptionSuccessfulApplied,
              textAlign: TextAlign.center,
              style: context.textTheme.title,
            ),
            const Gap(18),
            SqlAppButton.primary(
              label: context.s.subscriptionSuccessfulCoolButton,
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}
