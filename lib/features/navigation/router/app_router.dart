import 'package:auto_route/auto_route.dart';
import 'package:sql_app/features/cart/presentation/pages/cart_page.dart';

import 'package:sql_app/features/home/presentation/pages/home_page.dart';
import 'package:sql_app/features/orders/presentation/orders_page.dart';
import 'package:sql_app/features/products/presentation/pages/products_page.dart';
import 'package:sql_app/features/splash/presentation/pages/splash_page.dart';
import 'package:sql_app/features/tables/presentation/pages/tables_page.dart';

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
        AutoRoute(
          page: ProductsRoute.page,
          path: '/products',
        ),
        AutoRoute(
          page: TableRoute.page,
          path: '/tables',
        ),
        AutoRoute(
          page: CartRoute.page,
          path: '/cart',
        ),
        AutoRoute(
          page: OrdersRoute.page,
          path: '/orders',
        ),
      ];
}
