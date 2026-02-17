import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/theme/app_colors.dart';
import 'package:noor/core/theme/app_text_styles.dart';

class AppSearchBarTheme {
  static SearchBarThemeData lightTheme(BuildContext context) {
    return SearchBarThemeData(
      constraints: BoxConstraints(maxHeight: 44.h, minHeight: 44.h),
      hintStyle: WidgetStateProperty.all(
        AppTextStyles.overline().copyWith(color: AppColors.secondary200),
      ),
      backgroundColor: WidgetStateProperty.all(AppColors.primary500),
      shape: WidgetStateProperty.all(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24)),
          side: BorderSide(color: AppColors.secondary100),
        ),
      ),
      textStyle: WidgetStateProperty.all(
        AppTextStyles.subtitle1().copyWith(color: AppColors.white),
      ),
      elevation: WidgetStateProperty.all(0),
    );
  }
}
