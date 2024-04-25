import 'package:admin_panel/features/dashboard/dashboard_route.dart';
import 'package:admin_panel/features/login/login_page.dart';
import 'package:admin_panel/features/login/login_route.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRouter {
  static String initalRoutes = LoginPage.route;
  static final pages = <GetPage>[
    ...loginRoute,
    ...dashboardRoute,
  ];
}
