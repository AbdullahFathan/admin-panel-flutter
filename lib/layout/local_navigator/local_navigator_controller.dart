import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  static NavigationController instance = Get.find();
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  void navigateTo(String routeName) {
    print("Masuk navigasi");
    navigatorKey.currentState?.pushNamed(routeName);
    print("keluar navigasi");
  }

  goBack() => navigatorKey.currentState!.pop();
}
