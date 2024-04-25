import 'package:admin_panel/config/themes/resource/color.dart';
import 'package:admin_panel/features/sidebar/sidebar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:admin_panel/constant/sidebar_menu.dart';

class VerticalMenuItem extends GetView<SideBarController> {
  const VerticalMenuItem({
    super.key,
    required this.item,
  });

  final MenuItem item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        onHover: (value) {
          value
              ? controller.onHover(item.name)
              : controller.onHover("not hovering");
        },
        child: Obx(() => Container(
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
                      width: 3,
                      height: 72,
                      color: AppColor.blackColor,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
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
                ],
              ),
            )));
  }
}
