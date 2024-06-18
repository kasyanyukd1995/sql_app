import 'dart:async';

import 'package:sql_app/features/navigation/router/app_router.dart';
import 'package:sql_app/src/shared/base/base_manager.dart';

const _kSplashShowingDuration = Duration(seconds: 2);

class MainAppManager extends BaseManager<void> {
  MainAppManager() : super(null);

  Future<void> initialize() async {
    Timer(
      _kSplashShowingDuration,
      () => _handleNavigateAfterSplash(),
    );
  }

  Future<void> _handleNavigateAfterSplash() async {
    routing.replaceAll([const HomeRoute()]);
  }
}
