import 'package:admin_panel/config/themes/resource/color.dart';
import 'package:admin_panel/utils/helper/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scafflodKey;
  const NavBar({super.key, required this.scafflodKey});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Image.asset(
                    "assets/logo.png",
                    width: 28,
                  ),
                ),
              ],
            )
          : IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                scafflodKey.currentState!.openDrawer();
              }),
      title: Row(
        children: [
          Visibility(
            visible: !ResponsiveWidget.isSmallScreen(context),
            child: Text(
              "Admin Panel",
              style: Get.textTheme.labelMedium,
            ),
          ),
          Expanded(child: Container()),
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: AppColor.blackColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: AppColor.blackColor.withOpacity(.7),
            ),
            onPressed: () {},
          ),
          Container(
            width: 1,
            height: 22,
            color: AppColor.lightGrey,
          ),
          const SizedBox(
            width: 24,
          ),
          Text(
            "Admin",
            style: Get.textTheme.labelMedium,
          ),
          const SizedBox(
            width: 16,
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColor.greenColor.withOpacity(.5),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.all(2),
              child: const CircleAvatar(
                backgroundColor: AppColor.bgColor,
                child: Icon(
                  Icons.person_outline,
                  color: AppColor.blackColor,
                ),
              ),
            ),
          ),
        ],
      ),
      iconTheme: const IconThemeData(color: AppColor.blackColor),
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
