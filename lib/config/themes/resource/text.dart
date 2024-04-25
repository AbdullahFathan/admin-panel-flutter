import 'package:admin_panel/config/themes/resource/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextClass {
  static TextTheme textTheme = TextTheme(
    displayMedium: GoogleFonts.inter(
      fontWeight: FontWeight.w700,
      color: AppColor.blackColor,
      fontSize: 18,
    ),
    titleMedium: GoogleFonts.inter(
      fontSize: 16,
      color: AppColor.blackColor,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: GoogleFonts.inter(
      fontSize: 14,
      color: AppColor.blackColor,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: GoogleFonts.inter(
      fontSize: 12,
      color: AppColor.blackColor,
      fontWeight: FontWeight.w400,
    ),
  );
}
