import 'package:sql_app/features/navigation/router/app_router.dart';

extension RouterExtensions on SqlAppRouter {
  bool isCurrentPage(String pageName) {
    return stack.last.name == pageName;
  }

  String getStringPathParamFromCurrentRoute(String pathKey) {
    try {
      final path = stack.last.routeData.pathParams.getString(pathKey);

      return path;
    } catch (e) {
      return '';
    }
  }
}
