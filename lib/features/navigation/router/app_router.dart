import 'package:auto_route/auto_route.dart';

import 'package:sql_app/features/home/presentation/pages/home_page.dart';
import 'package:sql_app/features/splash/presentation/pages/splash_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class SqlAppRouter extends _$SqlAppRouter {
  SqlAppRouter() : super();

  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          page: SplashRoute.page,
          path: '/splash',
          initial: true,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: HomeRoute.page,
          path: '/home',
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 500,
        ),
      ];
}
