import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sql_app/features/products/presentation/managers/product_manager.dart';
import 'package:sql_app/src/providers/repositories_providers.di.dart';

final productsManagerProvider = StateNotifierProvider.autoDispose<ProductManager, ProductPageState>(
  (ref) => ProductManager(
    ref.read(productRepositoryProvider),
    ref.read(waiterRepositoryProvider),
    ref.read(orderFlowRepositoryProvider),
  ),
);
