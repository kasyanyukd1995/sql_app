import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sql_app/features/tables/manager/tables_manager.dart';
import 'package:sql_app/src/providers/repositories_providers.di.dart';

final tablesManagerProvider = StateNotifierProvider.autoDispose<TablesManager, TablesPageState>(
  (ref) => TablesManager(
    ref.read(waiterRepositoryProvider),
    ref.read(orderFlowRepositoryProvider),
  ),
);
