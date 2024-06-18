import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sql_app/features/app/managers/main_app_manager.dart';

final mainAppManagerProvider = StateNotifierProvider<MainAppManager, void>(
  (ref) => MainAppManager(),
);
