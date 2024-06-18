import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin TemporarySubscriptionMixin<S> on StateNotifier<S> {
  final Map<String, StreamSubscription<Object?>> _subscriptions = {};

  void addTemporarySubscription(String key, StreamSubscription<Object?> subscription) {
    closeTemporarySubscription(key);
    _subscriptions[key] = subscription;
  }

  void closeTemporarySubscription(String key) {
    _subscriptions.remove(key)?.cancel();
  }

  void closeTemporarySubscriptions(List<String> keys) {
    keys.forEach(closeTemporarySubscription);
  }

  Future<void> closeAllTemporarySubscription() => _cleanSubscriptions(_subscriptions);

  bool isSubscriptionExist(String key) {
    return _subscriptions.containsKey(key);
  }

  Future<void> _cleanSubscriptions(Map<String, StreamSubscription<Object?>> subscriptions) async {
    if (subscriptions.isNotEmpty) {
      await Future.wait(subscriptions.values.map((e) => e.cancel()));
      subscriptions.clear();
    }
  }

  @override
  void dispose() {
    scheduleMicrotask(() async {
      await _cleanSubscriptions(_subscriptions);
    });

    super.dispose();
  }
}
