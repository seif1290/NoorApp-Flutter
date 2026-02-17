import 'package:flutter/material.dart';
import 'package:noor/core/theme/app_colors.dart';

class AppColorScheme {
  static ColorScheme lightTheme = const ColorScheme.light(
    primary: AppColors.primary500,
    onPrimary: AppColors.white,
    secondary: AppColors.secondary500,
    tertiary: AppColors.neutral500,
    onSecondary: AppColors.white,
    surface: AppColors.white,
    onSurface: AppColors.black,
    brightness: Brightness.light,
    error: AppColors.error,
    onError: AppColors.white,
    onPrimaryFixed: AppColors.secondary200,
  );
}
