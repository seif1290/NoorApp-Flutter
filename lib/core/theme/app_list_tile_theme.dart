import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/theme/app_colors.dart';
import 'package:noor/core/theme/app_text_styles.dart';

class AppListTileTheme {
  AppListTileTheme._();
  static ListTileThemeData lightTheme = ListTileThemeData(
    iconColor: AppColors.secondary500,
    textColor: AppColors.black,
    titleTextStyle: AppTextStyles.subtitle1(),
    subtitleTextStyle: AppTextStyles.overline(),
    contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
    minVerticalPadding: 4.h,
  );
}
