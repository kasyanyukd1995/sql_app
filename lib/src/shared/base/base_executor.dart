import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:sql_app/features/dialog/dialog_service.dart';
import 'package:sql_app/features/localization/index.dart';
import 'package:sql_app/features/navigation/router/app_router.dart';
import 'package:sql_app/features/snack_bar_service.dart/presentation/snack_bar_service.dart';

typedef ExecutiveFunction<DomainModel> = Future<DomainModel> Function();

mixin BaseExecutor {
  static ValueGetter<SqlAppRouter>? _sqlAppRouter;
  static ValueGetter<SnackBarService>? _qrSnackBarService;
  static ValueGetter<AppLocalizations>? _appLocalizations;
  static ValueGetter<DialogService>? _dialogService;

  @protected
  SqlAppRouter get routing => _sqlAppRouter!();
  SnackBarService get snackBarService => _qrSnackBarService!();
  DialogService get dialogService => _dialogService!();
  AppLocalizations get localization => _appLocalizations!();

  static void setDependencies(
    ValueGetter<SqlAppRouter> sqlAppRouter,
    ValueGetter<SnackBarService> qrSnackBarService,
    ValueGetter<AppLocalizations> appLocalizations,
    ValueGetter<DialogService> dialogService,
  ) {
    _sqlAppRouter = sqlAppRouter;
    _qrSnackBarService = qrSnackBarService;
    _appLocalizations = appLocalizations;
    _dialogService = dialogService;
  }

  Future<void> makeAsyncSafeExecution<T>({
    required ExecutiveFunction<T> function,
    ValueChanged<T>? onSuccess,
    FutureOr<void> Function(Exception ex)? onOtherError,
    VoidCallback? onAuthenticationError,
  }) async {
    try {
      T result;

      result = await function();

      if (onSuccess != null) {
        onSuccess(result);
      }
    } catch (ex) {
      EasyLoading.dismiss();
      log('makeAsyncSafeExecution catch $ex');

      final exception = ex is Exception ? ex : Exception(ex);
    }
  }
}
