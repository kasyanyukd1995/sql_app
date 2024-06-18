import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sql_app/features/app/main_provider.di.dart';
import 'package:sql_app/features/app/managers/main_app_manager.dart';
import 'package:sql_app/src/assets/assets.gen.dart';
import 'package:sql_app/src/presentation/index.dart';

@RoutePage()
class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  late MainAppManager _mainAppManager;

  @override
  void initState() {
    super.initState();
    _mainAppManager = ref.read(mainAppManagerProvider.notifier);
    _mainAppManager.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DecreaseIncreaseAnimationTransition(
        child: RotateAnimationTransition(
          child: SqlAppAssets.icons.qrcodeBlack.svg(
            height: 100,
          ),
        ),
      ),
    );
  }
}
