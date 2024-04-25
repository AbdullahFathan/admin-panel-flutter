import 'package:admin_panel/features/dashboard/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoardPage extends GetView<DashBoardController> {
  static const String route = "/dashboard";
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      child: Text("Dashboard Page"),
    );
  }
}
