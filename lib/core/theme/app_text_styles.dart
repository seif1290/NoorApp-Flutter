import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noor/core/theme/app_colors.dart';
import 'package:noor/core/ui/ui_utils/responsive_layout.dart';

class AppTextStyles {
  const AppTextStyles._();

  static TextStyle font24_28Regular(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: _isMobile(context) ? 24.sp : 28,
  );

  static TextStyle font24_28Bold(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: _isMobile(context) ? 24.sp : 28,
    color: AppColors.black,
  );
  static TextStyle font20_24GreenRegular(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: _isMobile(context) ? 20.sp : 24,
    color: AppColors.primary500,
  );
  static TextStyle font18_22GreenRegular(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: _isMobile(context) ? 18.sp : 22,
    color: AppColors.primary500,
  );
  static TextStyle font14_18GreenRegular(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: _isMobile(context) ? 14.sp : 18,
    color: AppColors.primary500,
  );
  static TextStyle font16_20SemiBold(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: _isMobile(context) ? 16.sp : 20,
    color: AppColors.black,
  );
  static const title14 = TextStyle(fontWeight: FontWeight.w400, fontSize: 14);
  static TextStyle font12_16RegularYellow(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: _isMobile(context) ? 12.sp : 16,
    color: AppColors.secondary500,
  );
  static TextStyle font10_14RegularBlack(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: _isMobile(context) ? 10.sp : 14,
  );

  static TextStyle font12_16Arial(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: _isMobile(context) ? 12.sp : 16,
  );

  static TextStyle font16_20GreenAmiri(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: _isMobile(context) ? 16.sp : 20,
  );

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
    color: AppColors.secondary500,
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

  static bool _isMobile(BuildContext context) =>
      ResponsiveLayout.isMobile(context);
}
