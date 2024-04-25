import 'package:admin_panel/features/dashboard/dashboard_page.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case DashBoardPage.route:
      return getPageRoute(const DashBoardPage());
    default:
      return getPageRoute(const DashBoardPage());
  }
}

PageRoute getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
