import 'package:admin_panel/config/themes/resource/color.dart';
import 'package:admin_panel/config/themes/resource/input_decoration.dart';
import 'package:admin_panel/config/themes/resource/text.dart';
import 'package:flutter/material.dart';

class ThemeClass {
  static ThemeData lightTheme = ThemeData(
    textTheme: TextClass.textTheme,
    scaffoldBackgroundColor: AppColor.whiteColor,
    inputDecorationTheme: InputDecorationStyle.inputDecoration(),
  );
}
