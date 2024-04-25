import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:admin_panel/config/themes/resource/color.dart';
import 'package:admin_panel/constant/sidebar_menu.dart';
import 'package:admin_panel/features/sidebar/sidebar_controller.dart';

class HorizontalMenuItem extends GetView<SideBarController> {
  const HorizontalMenuItem({
    super.key,
    required this.item,
  });

  final MenuItem item;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {},
      onHover: (value) {
        value
            ? controller.onHover(item.name)
            : controller.onHover("not hovering");
      },
      child: Obx(
        () => Container(
          color: controller.isHovering(item.name)
              ? AppColor.lightGrey.withOpacity(.1)
              : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                visible: controller.isHovering(item.name) ||
                    controller.isActive(item.name),
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: Container(
                  width: 6,
                  height: 40,
                  color: AppColor.blackColor,
                ),
              ),
              SizedBox(width: width / 88),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Icon(
                  item.icon,
                  color: controller.isActive(item.name)
                      ? AppColor.blackColor
                      : controller.isHovering(item.name)
                          ? AppColor.blackColor
                          : AppColor.lightGrey,
                ),
              ),
              if (!controller.isActive(item.name))
                Flexible(
                  child: Text(
                    item.name,
                    style: Get.textTheme.bodyMedium!.copyWith(
                      color: controller.isHovering(item.name)
                          ? AppColor.blackColor
                          : AppColor.lightGrey,
                    ),
                  ),
                )
              else
                Flexible(
                  child: Text(
                    item.name,
                    style: Get.textTheme.bodyMedium!.copyWith(
                      color: AppColor.blackColor,
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
