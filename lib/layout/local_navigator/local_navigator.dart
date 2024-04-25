import 'package:admin_panel/features/dashboard/dashboard_page.dart';
import 'package:admin_panel/layout/local_navigator/local_navigator_controller.dart';
import 'package:admin_panel/layout/local_navigator/local_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Navigator localNavigator() => Navigator(
      key: NavigationController().navigatorKey,
      initialRoute: DashBoardPage.route,
      onGenerateRoute: generateRoute,
    );
