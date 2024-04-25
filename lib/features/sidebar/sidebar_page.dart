import 'package:admin_panel/config/themes/resource/color.dart';
import 'package:admin_panel/constant/sidebar_menu.dart';
import 'package:admin_panel/features/sidebar/sidebar_controller.dart';
import 'package:admin_panel/features/sidebar/widgets/sidebar_menu_item.dart';
import 'package:admin_panel/utils/helper/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideBar extends StatelessWidget {
  static String route = "/sidebar";
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    Get.put(SideBarController());
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
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 8),
            itemCount: sideMenuItems.length,
            itemBuilder: (context, index) {
              final item = sideMenuItems[index];
              return SideMenuItem(item: item);
            },
            separatorBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 5,
                ),
                child: Divider(
                  color: AppColor.blackColor,
                  thickness: 1,
                  indent: 8,
                  endIndent: 8,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
