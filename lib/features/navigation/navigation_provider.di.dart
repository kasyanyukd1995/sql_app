import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sql_app/features/navigation/router/app_router.dart';

final sqlAppRouterProvider = Provider<SqlAppRouter>(
  (ref) {
    return SqlAppRouter();
  },
);
