import 'package:flutter/material.dart';

import 'package:admin_panel/features/dashboard/dashboard_page.dart';

class MenuItem {
  final String name;
  final String route;
  final IconData icon;

  MenuItem({
    required this.name,
    required this.route,
    required this.icon,
  });
}

List<MenuItem> sideMenuItems = [
  MenuItem(
    name: "Dashboard",
    route: DashBoardPage.route,
    icon: Icons.dashboard,
  ),
];
