import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sql_app/src/presentation/app_theme/index.dart';
import 'package:sql_app/src/shared/extensions/context_extensions.dart';

class FileSystemPermissionDeniedDialog extends StatelessWidget {
  const FileSystemPermissionDeniedDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.close),
              ),
            ),
            const Gap(16),
            Text(
              context.s.qrCodePageFileSystemPermissionDeniedDialogText,
              textAlign: TextAlign.center,
              style: context.textTheme.bodyMedium,
            ),
            const Gap(16),
            SqlAppButton.primary(
              label: context.s.qrCodePageFileSystemPermissionDeniedDialogButtonText,
              onPressed: () => Navigator.of(context).pop(true),
            )
          ],
        ),
      ),
    );
  }
}
