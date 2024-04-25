import 'package:admin_panel/features/login/login_binding.dart';
import 'package:admin_panel/features/login/login_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

final List loginRoute = [
  GetPage(
    name: LoginPage.route,
    page: () => const LoginPage(),
    binding: LoginBinding(),
  ),
];
