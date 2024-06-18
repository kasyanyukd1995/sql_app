import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sql_app/features/dialog/dialog_provider.di.dart';
import 'package:sql_app/features/localization/index.dart';
import 'package:sql_app/features/navigation/navigation_provider.di.dart';
import 'package:sql_app/features/navigation/router/app_router.dart';
import 'package:sql_app/features/snack_bar_service.dart/snack_bar_provider.di.dart';
import 'package:sql_app/src/presentation/index.dart';
import 'package:sql_app/src/providers/app_providers.di.dart';
import 'package:sql_app/src/shared/base/base_executor.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AppState();
}

class _AppState extends ConsumerState<App> with WidgetsBindingObserver {
  late SqlAppRouter _sqlAppRouter;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    _sqlAppRouter = ref.read(sqlAppRouterProvider);

    configLoading(context);

    BaseExecutor.setDependencies(
      () => _sqlAppRouter,
      () => ref.read(snackBarServiceProvider),
      () => ref.read(appLocalizationsProvider),
      () => ref.read(dialogServiceProvider),
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: SqlAppColors.bgWhite),
        scaffoldBackgroundColor: SqlAppColors.white,
        useMaterial3: true,
        bottomSheetTheme: BottomSheetThemeData(
          surfaceTintColor: Colors.transparent,
          backgroundColor: SqlAppColors.bgWhite,
          modalBarrierColor: Colors.black.withOpacity(0.6),
          clipBehavior: Clip.hardEdge,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
        ),
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: SqlAppColors.textPrimary,
              displayColor: SqlAppColors.textPrimary,
            ),
      ),
      routerConfig: _sqlAppRouter.config(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale('ru'),
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
    );
  }
}
