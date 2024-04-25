import 'package:admin_panel/config/themes/resource/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputItemWithPadding extends StatelessWidget {
  final String title;
  final String? desc;
  final double? space;
  final Widget child;
  const InputItemWithPadding({
    super.key,
    required this.title,
    this.desc,
    this.space,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: Get.textTheme.bodyMedium,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: space ?? 5),
            child: child,
          ),
          Text(
            title,
            style: Get.textTheme.labelMedium!.copyWith(
              color: AppColor.hintColor,
            ),
          ),
        ],
      ),
    );
  }
}
