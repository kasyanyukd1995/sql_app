import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sql_app/src/shared/base/index.dart';

abstract class BaseManager<S> extends StateNotifier<S>
    with PermanentSubscriptionMixin, TemporarySubscriptionMixin, BaseExecutor {
  BaseManager(super.state) {
    onInit();
  }

  @protected
  void onInit() {}

  @override
  @protected
  @mustCallSuper
  void dispose() {
    EasyLoading.dismiss();
    super.dispose();
  }
}
