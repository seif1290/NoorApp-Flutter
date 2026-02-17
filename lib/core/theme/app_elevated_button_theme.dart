import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/theme/app_colors.dart';
import 'package:noor/core/theme/app_text_styles.dart';
import 'package:noor/core/ui/ui_utils/app_values.dart';

class AppElevatedButtonTheme {
  static ElevatedButtonThemeData lightTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: AppTextStyles.button(),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppValues.radius24)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.h),
      backgroundColor: AppColors.primary500,
      foregroundColor: AppColors.white,
      shadowColor: AppColors.neutral900,
      elevation: 4,
    ),
  );
}
