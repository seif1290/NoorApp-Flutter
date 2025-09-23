import 'package:flutter/material.dart';
import 'package:noor/core/theme/custom_themes/app_outlined_button_theme.dart';
import 'package:noor/core/theme/custom_themes/app_text_button_theme.dart';
import 'package:noor/core/theme/custom_themes/app_text_theme.dart';
import 'package:noor/core/theme/custom_themes/custom_app_bar_theme.dart';
import 'package:noor/core/theme/custom_themes/elevated_button_theme.dart';
import 'package:noor/core/utils/constants/ui_constants/app_colors.dart';

class AppTheme {
  // Light Theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.lightBackground,
    appBarTheme: CustomAppBarTheme.lightAppBartheme,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    textButtonTheme: AppTextButtonTheme.lightTextButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.lightSurface,
    ),
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.darkBackground,
    appBarTheme: CustomAppBarTheme.darkAppBartheme,
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    textButtonTheme: AppTextButtonTheme.darkTextButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonTheme,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.darkSurface,
    ),
  );
}
