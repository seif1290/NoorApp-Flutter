import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/theme/app_colors.dart';
import 'package:noor/core/ui/ui_utils/app_fonts.dart';
import 'package:noor/core/ui/ui_utils/responsive_layout.dart';

class AppTextStyles {
  const AppTextStyles._();

  static TextStyle font24_28WhiteRegular(BuildContext context) => TextStyle(
    fontFamily: AppFonts.cairo,
    fontWeight: FontWeight.w400,
    fontSize: _isMobile(context) ? 24.sp : 28,
    color: AppColors.white,
  );

  static TextStyle font20_24GreenRegular(BuildContext context) => TextStyle(
    fontFamily: AppFonts.cairo,
    fontWeight: FontWeight.w400,
    fontSize: _isMobile(context) ? 20.sp : 24,
    color: AppColors.primary,
  );
  static TextStyle font18_22GreenRegular(BuildContext context) => TextStyle(
    fontFamily: AppFonts.cairo,
    fontWeight: FontWeight.w400,
    fontSize: _isMobile(context) ? 18.sp : 22,
    color: AppColors.primary,
  );
  static TextStyle font14_18GreenRegular(BuildContext context) => TextStyle(
    fontFamily: AppFonts.cairo,
    fontWeight: FontWeight.w400,
    fontSize: _isMobile(context) ? 14.sp : 18,
    color: AppColors.primary,
  );
  static TextStyle font16_20GreenSemiBold(BuildContext context) => TextStyle(
    fontFamily: AppFonts.cairo,
    fontWeight: FontWeight.w600,
    fontSize: _isMobile(context) ? 16.sp : 20,
    color: AppColors.primary,
  );
  static final title14 = TextStyle(
    fontFamily: AppFonts.cairo,
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
  );
  static TextStyle font12_16RegularYellow(BuildContext context) => TextStyle(
    fontFamily: AppFonts.cairo,
    fontWeight: FontWeight.w400,
    fontSize: _isMobile(context) ? 12.sp : 16,
    color: AppColors.secondary,
  );
  static TextStyle font10_14RegularBlack(BuildContext context) => TextStyle(
    fontFamily: AppFonts.cairo,
    fontWeight: FontWeight.w400,
    fontSize: _isMobile(context) ? 10.sp : 14,
  );

  static TextStyle font12_16Arial(BuildContext context) => TextStyle(
    fontFamily: AppFonts.arial,
    fontWeight: FontWeight.w400,
    fontSize: _isMobile(context) ? 12.sp : 16,
  );

  static TextStyle font16_20GreenAmiri(BuildContext context) => TextStyle(
    fontFamily: AppFonts.amiri,
    fontWeight: FontWeight.w400,
    fontSize: _isMobile(context) ? 16.sp : 20,
  );

  static bool _isMobile(BuildContext context) =>
      ResponsiveLayout.isMobile(context);
}
