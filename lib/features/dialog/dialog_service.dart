import 'package:flutter/material.dart';
import 'package:sql_app/features/dialog/presentation/index.dart';
import 'package:sql_app/features/navigation/router/app_router.dart';
import 'package:sql_app/src/shared/extensions/context_extensions.dart';

class DialogService {
  final SqlAppRouter _router;

  BuildContext get _context => _router.navigatorKey.currentContext!;

  DialogService(this._router);

  Future<int?> showAmountPicker({
    required List<int> items,
    String? title,
    required String Function(int item) toTitle,
  }) {
    return showModalBottomSheet<int?>(
      context: _context,
      useSafeArea: true,
      constraints: BoxConstraints(
        maxHeight: _context.screenHeight * 0.4,
      ),
      builder: (context) {
        return ValuePickerDialog(
          items: items,
          toTitle: toTitle,
          title: title,
        );
      },
    );
  }

  Future<void> showSuccessSubscriptionDialog() async {
    return showDialog(
      barrierColor: Colors.black.withOpacity(0.6),
      context: _context,
      builder: (context) {
        return const SuccessSubscribedDialog();
      },
    );
  }

  Future<bool?> showFileSystemPermissionDeniedDialog() async {
    return showDialog(
      barrierColor: Colors.black.withOpacity(0.6),
      context: _context,
      builder: (context) {
        return const FileSystemPermissionDeniedDialog();
      },
    );
  }
}
