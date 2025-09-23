import 'package:flutter/material.dart';
import 'package:noor/core/utils/constants/ui_constants/app_colors.dart';
import 'package:noor/core/utils/constants/ui_constants/app_fonts.dart';

class AppTextTheme {
  AppTextTheme._();

  static const TextTheme _baseTextTheme = TextTheme(
    headlineSmall: TextStyle(
      fontFamily: AppFonts.amiri,
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: TextStyle(fontFamily: AppFonts.cairo, fontSize: 16),
    bodyMedium: TextStyle(fontFamily: AppFonts.cairo, fontSize: 16),
    bodySmall: TextStyle(fontFamily: AppFonts.cairo, fontSize: 14),
  );

  static final TextTheme lightTextTheme = _baseTextTheme.copyWith(
    headlineSmall: _baseTextTheme.headlineSmall?.copyWith(
      color: AppColors.primary,
    ),
    titleMedium: _baseTextTheme.titleMedium?.copyWith(
      color: AppColors.lightTextPrimary,
    ),
    bodyMedium: _baseTextTheme.bodyMedium?.copyWith(
      color: AppColors.lightTextSecondary,
    ),
    bodySmall: _baseTextTheme.bodySmall?.copyWith(
      color: AppColors.lightTextSecondary,
    ),
  );

  static final TextTheme darkTextTheme = _baseTextTheme.copyWith(
    headlineSmall: _baseTextTheme.headlineSmall?.copyWith(
      color: AppColors.secondary,
    ),
    titleMedium: _baseTextTheme.titleMedium?.copyWith(
      color: AppColors.darkTextPrimary,
    ),
    bodyMedium: _baseTextTheme.bodyMedium?.copyWith(
      color: AppColors.darkTextSecondary,
    ),
    bodySmall: _baseTextTheme.bodySmall?.copyWith(
      color: AppColors.darkTextSecondary,
    ),
  );
}
