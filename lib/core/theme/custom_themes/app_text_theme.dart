import 'package:flutter/material.dart';
import 'package:noor/core/utils/constants/ui_constants/app_colors.dart';
import 'package:noor/core/utils/constants/ui_constants/app_fonts.dart';

class AppTextTheme {
  AppTextTheme._();

  static const TextTheme _baseTextTheme = TextTheme(
    headlineLarge: TextStyle(
      fontFamily: AppFonts.cairo,
      fontSize: 30,
      fontWeight: FontWeight.w700,
    ),
    headlineSmall: TextStyle(fontFamily: AppFonts.cairo, fontSize: 20),
    titleLarge: TextStyle(fontFamily: AppFonts.quran, fontSize: 32),
    titleMedium: TextStyle(fontFamily: AppFonts.cairo, fontSize: 16),
    bodyLarge: TextStyle(fontFamily: AppFonts.cairo, fontSize: 18),
    labelLarge: TextStyle(fontFamily: AppFonts.cairo, fontSize: 18),
    labelMedium: TextStyle(fontFamily: AppFonts.cairo, fontSize: 14),
    labelSmall: TextStyle(fontFamily: AppFonts.cairo, fontSize: 12),
  );

  static final TextTheme lightTextTheme = _baseTextTheme.copyWith(
    headlineLarge: _baseTextTheme.headlineLarge?.copyWith(
      color: AppColors.lightTextPrimary,
    ),
    headlineSmall: _baseTextTheme.headlineSmall?.copyWith(
      color: AppColors.lightTextPrimary,
    ),
    titleLarge: _baseTextTheme.titleLarge?.copyWith(
      color: AppColors.lightTextPrimary,
    ),
    titleMedium: _baseTextTheme.titleMedium?.copyWith(
      color: AppColors.lightTextPrimary,
    ),
    bodyLarge: _baseTextTheme.bodyLarge?.copyWith(
      color: AppColors.lightTextSecondary,
    ),
    labelLarge: _baseTextTheme.labelLarge?.copyWith(
      color: AppColors.lightSurface,
    ),
    labelMedium: _baseTextTheme.labelMedium?.copyWith(
      color: AppColors.lightTextSecondary,
    ),
    labelSmall: _baseTextTheme.labelSmall?.copyWith(
      color: AppColors.lightTextSecondary,
    ),
  );

  // Dark Text Theme
  static final TextTheme darkTextTheme = _baseTextTheme.copyWith(
    headlineLarge: _baseTextTheme.headlineLarge?.copyWith(
      color: AppColors.darkTextPrimary,
    ),
    headlineSmall: _baseTextTheme.headlineSmall?.copyWith(
      color: AppColors.darkTextPrimary,
    ),
    titleLarge: _baseTextTheme.titleLarge?.copyWith(
      color: AppColors.darkTextPrimary,
    ),
    titleMedium: _baseTextTheme.titleMedium?.copyWith(
      color: AppColors.darkTextPrimary,
    ),
    bodyLarge: _baseTextTheme.bodyLarge?.copyWith(
      color: AppColors.darkTextSecondary,
    ),
    labelLarge: _baseTextTheme.labelLarge?.copyWith(
      color: AppColors.darkSurface,
    ),
    labelMedium: _baseTextTheme.labelMedium?.copyWith(
      color: AppColors.darkTextSecondary,
    ),
    labelSmall: _baseTextTheme.labelSmall?.copyWith(
      color: AppColors.darkTextSecondary,
    ),
  );
}
