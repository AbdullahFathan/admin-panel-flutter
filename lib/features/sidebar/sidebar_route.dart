import 'package:admin_panel/features/sidebar/sidebar_binding.dart';
import 'package:admin_panel/features/sidebar/sidebar_page.dart';
import 'package:get/get.dart';

final List sideBarRoute = [
  GetPage(
    name: SideBar.route,
    page: () => const SideBar(),
    binding: SideBarBinding(),
  ),
];
