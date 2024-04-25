import 'package:admin_panel/config/themes/resource/color.dart';
import 'package:admin_panel/utils/helper/responsive.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  static String route = "/sidebar";
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: AppColor.whiteColor,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(width: width / 48),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset(
                        "assets/logo.png",
                        width: 28,
                      ),
                    ),
                    const Flexible(
                      child: Text(
                        "Admin Page",
                      ),
                    ),
                    SizedBox(width: width / 48),
                  ],
                ),
              ],
            ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [],
          )
        ],
      ),
    );
  }
}
