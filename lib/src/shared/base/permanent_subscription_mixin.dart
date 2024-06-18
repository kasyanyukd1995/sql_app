import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin PermanentSubscriptionMixin<S> on StateNotifier<S> {
  final List<StreamSubscription<Object?>> _permanentSubscriptions = [];

  void addPermanentSubscription(StreamSubscription<Object?> subscription) {
    _permanentSubscriptions.add(subscription);
  }

  void addPermanentSubscriptions(List<StreamSubscription<Object?>> subscriptions) {
    _permanentSubscriptions.addAll(subscriptions);
  }

  Future<void> cleanSubscriptions(List<StreamSubscription<Object?>> subscriptions) async {
    final tasks = subscriptions.map((element) => element.cancel()).toList();
    subscriptions.clear();
    await Future.wait(tasks);
  }

  @override
  void dispose() {
    scheduleMicrotask(() async {
      await cleanSubscriptions(_permanentSubscriptions);
    });

    super.dispose();
  }
}
