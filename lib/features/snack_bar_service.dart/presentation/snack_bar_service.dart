import 'package:flutter/material.dart';
import 'package:sql_app/features/navigation/router/app_router.dart';
import 'package:sql_app/features/snack_bar_service.dart/presentation/info_snack_bar.dart';

class SnackBarService {
  final SqlAppRouter _sqlAppRouter;

  SnackBarService(this._sqlAppRouter);

  BuildContext get _context => _sqlAppRouter.navigatorKey.currentState!.context;

  Future<void> showInfoSnackBar({
    required String title,
    BuildContext? context,
  }) async {
    final scaffoldMessenger = ScaffoldMessenger.of(context ?? _context);
    scaffoldMessenger.clearSnackBars();

    scaffoldMessenger.showSnackBar(
      InfoSnackBar.createInfoSnack(
        context: context ?? _context,
        title: title,
      ),
    );
  }
}
