import 'package:admin_panel/features/dashboard/dashboard_binding.dart';
import 'package:admin_panel/features/dashboard/dashboard_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

final List dashboardRoute = [
  GetPage(
    name: DashBoardPage.route,
    page: () => const DashBoardPage(),
    binding: DashBoardBinding(),
  ),
];
