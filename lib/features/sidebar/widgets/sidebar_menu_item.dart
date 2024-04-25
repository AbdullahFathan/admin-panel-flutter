import 'package:admin_panel/constant/sidebar_menu.dart';
import 'package:admin_panel/features/sidebar/widgets/horinzontal_menu_item.dart';
import 'package:admin_panel/features/sidebar/widgets/vertical_menu_item.dart';
import 'package:admin_panel/utils/helper/responsive.dart';
import 'package:flutter/material.dart';

class SideMenuItem extends StatelessWidget {
  const SideMenuItem({super.key, required this.item});

  final MenuItem item;

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomScreen(context)) {
      return VerticalMenuItem(
        item: item,
      );
    } else {
      return HorizontalMenuItem(
        item: item,
      );
    }
  }
}
