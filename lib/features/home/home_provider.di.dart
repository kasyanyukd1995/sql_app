import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sql_app/features/home/presentation/managers/home_manager.dart';
import 'package:sql_app/src/providers/repositories_providers.di.dart';

final homeManagerProvider = StateNotifierProvider.autoDispose<HomeManager, HomePageState>(
  (ref) => HomeManager(
    ref.read(productRepositoryProvider),
    ref.read(waiterRepositoryProvider),
  ),
);
