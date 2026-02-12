import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:noor/core/theme/app_colors.dart';
import 'package:noor/core/theme/app_text_styles.dart';
import 'package:noor/core/ui/ui_utils/app_values.dart';

class AppThemeData {
  AppThemeData._();

  static ThemeData lightTheme(BuildContext context) => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.white,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary500,
      onPrimary: AppColors.white,
      secondary: AppColors.secondary500,
      onSecondary: AppColors.white,
      surface: AppColors.white,
      onSurface: AppColors.black,
      brightness: Brightness.light,
      error: AppColors.error,
      onError: AppColors.white,
    ),
    textTheme: TextTheme(
      headlineLarge: AppTextStyles.h4(),
      headlineMedium: AppTextStyles.h5(),
      headlineSmall: AppTextStyles.h6(),
      titleLarge: AppTextStyles.subtitle1(),
      titleMedium: AppTextStyles.subtitle2(),
      bodyLarge: AppTextStyles.body1(),
      bodyMedium: AppTextStyles.body2(),
      labelLarge: AppTextStyles.button(),
      labelMedium: AppTextStyles.caption(),
      labelSmall: AppTextStyles.overline(),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.white,
      iconTheme: const IconThemeData(color: AppColors.lightGrey),
      centerTitle: true,
      titleTextStyle: AppTextStyles.font20_24GreenRegular(context),
      elevation: 2.0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
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
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: AppTextStyles.title14,
        foregroundColor: AppColors.primary500,
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
        foregroundColor: AppColors.primary500,
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
      trackHeight: 16.h,
      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8.0),
      overlayShape: SliderComponentShape.noOverlay,
      activeTrackColor: AppColors.primary500,
      inactiveTrackColor: AppColors.lightGrey,
      thumbColor: const Color(0XFFF5F5F5),
    ),

    dropdownMenuTheme: DropdownMenuThemeData(
      inputDecorationTheme: InputDecorationTheme(
        fillColor: const Color(0XFFEBEBEB),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        iconColor: AppColors.lightGrey,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
      ),
    ),
    searchBarTheme: SearchBarThemeData(
      hintStyle: WidgetStateProperty.all(
        AppTextStyles.font12_16RegularYellow(
          context,
        ).copyWith(color: AppColors.lightGrey),
      ),
      shape: WidgetStateProperty.all(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppValues.radius12)),
        ),
      ),
      elevation: WidgetStateProperty.all(1.0),
    ),
  );
}
