import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sql_app/src/data/db/db_helper.dart';
import 'package:sql_app/src/data/repositories/index.dart';
import 'package:sql_app/src/data/repositories/order_flow_repository.dart';

final databaseHelperProvider = Provider<DatabaseHelper>(
  (ref) => DatabaseHelper(),
);

final ordersRepositoryProvider = Provider<OrdersRepository>(
  (ref) => OrdersRepository(
    ref.read(databaseHelperProvider),
  ),
);

final ordersItemRepositoryProvider = Provider<OrderItemRepository>(
  (ref) => OrderItemRepository(
    ref.read(databaseHelperProvider),
  ),
);

final waiterRepositoryProvider = Provider<WaiterRepository>(
  (ref) => WaiterRepository(
    ref.read(databaseHelperProvider),
  ),
);

final productRepositoryProvider = Provider<ProductRepository>(
  (ref) => ProductRepository(
    ref.read(databaseHelperProvider),
  ),
);

final orderFlowRepositoryProvider = Provider<OrderFlowRepository>(
  (ref) => OrderFlowRepository(),
);
