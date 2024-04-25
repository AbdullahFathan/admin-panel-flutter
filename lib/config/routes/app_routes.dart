import 'package:admin_panel/features/dashboard/dashboard_route.dart';
import 'package:admin_panel/features/login/login_page.dart';
import 'package:admin_panel/features/login/login_route.dart';
import 'package:admin_panel/features/sidebar/sidebar_route.dart';
import 'package:admin_panel/layout/site_layout_binding.dart';
import 'package:admin_panel/layout/web_layout.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRouter {
  static String initalRoutes = LoginPage.route;
  static final pages = <GetPage>[
    ...loginRoute,
    ...dashboardRoute,
    ...sideBarRoute,
    GetPage(
      name: SiteLayout.route,
      page: () => SiteLayout(),
    )
  ];
}
