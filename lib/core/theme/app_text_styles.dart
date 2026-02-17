import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:noor/core/theme/app_colors.dart';

class AppTextStyles {
  const AppTextStyles._();

  static TextStyle h4() => GoogleFonts.tajawal(
    fontWeight: FontWeight.w500,
    fontSize: 36,
    letterSpacing: 0.32,
  );

  static TextStyle h5() => GoogleFonts.tajawal(
    fontWeight: FontWeight.w500,
    fontSize: 28,
    color: AppColors.white,
  );
  static TextStyle h6() => GoogleFonts.tajawal(
    fontWeight: FontWeight.w500,
    fontSize: 24,
    letterSpacing: 0.04,
    color: AppColors.white,
  );

  static TextStyle subtitle1() => GoogleFonts.tajawal(
    fontWeight: FontWeight.w400,
    fontSize: 19,
    letterSpacing: 0.03,
    color: AppColors.primary500,
  );

  static TextStyle subtitle2() => GoogleFonts.tajawal(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: 0.03,
  );

  static TextStyle body1() =>
      GoogleFonts.amiri(fontWeight: FontWeight.w400, fontSize: 20);
  static TextStyle body2() =>
      GoogleFonts.amiri(fontWeight: FontWeight.w400, fontSize: 18);

  static TextStyle button() => GoogleFonts.tajawal(
    fontWeight: FontWeight.w500,
    fontSize: 18,
    letterSpacing: 0.23,
    color: AppColors.white,
  );

  static TextStyle caption() => GoogleFonts.tajawal(
    fontWeight: FontWeight.w400,
    fontSize: 15,
    letterSpacing: 0.06,
    color: AppColors.secondary500,
  );

  static TextStyle overline() => GoogleFonts.tajawal(
    fontWeight: FontWeight.w400,
    fontSize: 13,
    letterSpacing: 0.2,
    color: AppColors.secondary500,
  );
}
