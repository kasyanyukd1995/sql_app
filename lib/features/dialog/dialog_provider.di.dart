import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sql_app/features/dialog/dialog_service.dart';
import 'package:sql_app/features/navigation/navigation_provider.di.dart';

final dialogServiceProvider = Provider<DialogService>(
  (ref) => DialogService(ref.read(sqlAppRouterProvider)),
);
