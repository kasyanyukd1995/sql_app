import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sql_app/features/navigation/navigation_provider.di.dart';
import 'package:sql_app/features/snack_bar_service.dart/presentation/snack_bar_service.dart';

final snackBarServiceProvider = Provider.autoDispose<SnackBarService>(
  (ref) => SnackBarService(ref.read(sqlAppRouterProvider)),
);
