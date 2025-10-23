import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/theme/styles/app_colors.dart';
import 'package:noor/core/utils/app_fonts.dart';

class AppTextStyles {
  const AppTextStyles._();

  static final heading20 = TextStyle(
    fontFamily: AppFonts.cairo,
    fontWeight: FontWeight.w400,
    fontSize: 20.sp,
    color: AppColors.textPrimary,
  );
  static final heading18 = TextStyle(
    fontFamily: AppFonts.cairo,
    fontWeight: FontWeight.w400,
    fontSize: 18.sp,
    color: AppColors.textPrimary,
  );
  static final title16 = TextStyle(
    fontFamily: AppFonts.cairo,
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
    color: AppColors.textPrimary,
  );
  static final title14 = TextStyle(
    fontFamily: AppFonts.cairo,
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
  );
  static final title12 = TextStyle(
    fontFamily: AppFonts.cairo,
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: AppColors.textSecondary,
  );
  static final title10 = TextStyle(
    fontFamily: AppFonts.cairo,
    fontWeight: FontWeight.w400,
    fontSize: 10.sp,
  );
  static final arial12 = TextStyle(
    fontFamily: AppFonts.arial,
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
  );
  static final amiri18 = TextStyle(
    fontFamily: AppFonts.amiri,
    fontWeight: FontWeight.w400,
    fontSize: 18.sp,
  );
  static final amiri16 = TextStyle(
    fontFamily: AppFonts.amiri,
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
  );
}
