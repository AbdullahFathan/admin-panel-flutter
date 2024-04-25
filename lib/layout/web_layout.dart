import 'package:admin_panel/layout/large_screen.dart';
import 'package:admin_panel/layout/small_screen.dart';
import 'package:admin_panel/utils/helper/responsive.dart';
import 'package:admin_panel/utils/widgets/navbar.dart';
import 'package:admin_panel/features/sidebar/sidebar_page.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  static const String route = "/site/layout/home";
  SiteLayout({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: NavBar(
        scafflodKey: scaffoldKey,
      ),
      drawer: const Drawer(child: SideBar()),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        mediumScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
