import 'package:flutter/material.dart';
import 'package:noor/core/utils/constants/ui_constants/app_colors.dart';

class AppColorScheme {
  AppColorScheme._();

  static const ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.primary,
    onPrimary: AppColors.lightButtonFg,
    secondary: AppColors.secondary,
    onSecondary: AppColors.lightTextPrimary,
    error: AppColors.error,
    onError: Colors.white,
    surface: AppColors.lightSurface,
    onSurface: AppColors.lightTextPrimary,
    primaryContainer: AppColors.lightButtonBg,
    secondaryContainer: AppColors.lightIconSecondary,
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.primary,
    onPrimary: AppColors.darkButtonFg,
    secondary: AppColors.secondary,
    onSecondary: AppColors.darkTextPrimary,
    error: AppColors.error,
    onError: Colors.black,
    surface: AppColors.darkSurface,
    onSurface: AppColors.darkTextPrimary,
    primaryContainer: AppColors.darkButtonBg,
    secondaryContainer: AppColors.darkIconSecondary,
  );
}
