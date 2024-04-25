import 'package:admin_panel/features/product/product_page.dart';
import 'package:admin_panel/features/user/user_page.dart';
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
  MenuItem(
    name: "Product",
    route: ProductPage.route,
    icon: Icons.shopping_bag,
  ),
  MenuItem(
    name: "User",
    route: UserPage.route,
    icon: Icons.person,
  ),
  MenuItem(
    name: "Log Out",
    route: "",
    icon: Icons.logout,
  ),
];
