import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sql_app/features/cart/manager/cart_manager.dart';
import 'package:sql_app/src/providers/repositories_providers.di.dart';

final cartManagerProvider = StateNotifierProvider.autoDispose<CartManager, CartPageState>(
  (ref) => CartManager(
    ref.read(orderFlowRepositoryProvider),
    ref.read(ordersRepositoryProvider),
  ),
);
