import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:noor/core/theme/styles/app_colors.dart';
import 'package:noor/core/theme/styles/app_text_styles.dart';
import 'package:noor/core/utils/app_fonts.dart';
import 'package:noor/core/utils/app_values.dart';

class AppThemeData {
  AppThemeData._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: AppFonts.cairo,
    scaffoldBackgroundColor: AppColors.background,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.white,
      brightness: Brightness.light,
      error: AppColors.error,
    ),
    textTheme: ThemeData.light().textTheme.apply(
      bodyColor: AppColors.primary,
      displayColor: AppColors.primary,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.white,
      iconTheme: const IconThemeData(color: AppColors.lightGrey),
      centerTitle: true,
      titleTextStyle: AppTextStyles.heading20.copyWith(
        color: AppColors.primary,
      ),
      elevation: 2.0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: AppTextStyles.title14,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppValues.radius16)),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppValues.padding16,
          vertical: AppValues.padding8,
        ),
        // minimumSize: Size.fromHeight(AppValues.buttonHeight),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: AppTextStyles.title14,
        foregroundColor: AppColors.primary,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        textStyle: AppTextStyles.title14,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppValues.radius12)),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppValues.padding16,
          vertical: AppValues.padding8,
        ),
        foregroundColor: AppColors.primary,
        side: const BorderSide(),
      ),
    ),
    cardTheme: CardThemeData(
      color: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(AppValues.radius16),
      ),
    ),
    sliderTheme: SliderThemeData(
      trackHeight: 12.0.h,
      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8.0),
      overlayShape: SliderComponentShape.noOverlay,
      activeTrackColor: AppColors.primary,
      inactiveTrackColor: AppColors.background,
      thumbColor: const Color(0XFFF5F5F5),
    ),
  );
}
