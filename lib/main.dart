import 'package:admin_panel/config/routes/app_routes.dart';
import 'package:admin_panel/config/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeClass.lightTheme,
      initialRoute: AppRouter.initalRoutes,
      getPages: AppRouter.pages,
    );
  }
}
