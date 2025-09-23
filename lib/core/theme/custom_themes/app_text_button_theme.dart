import 'package:flutter/material.dart';
import 'package:noor/core/utils/constants/ui_constants/app_colors.dart';
import 'package:noor/core/utils/constants/ui_constants/app_fonts.dart';
import 'package:noor/core/utils/constants/ui_constants/app_values.dart';

class AppTextButtonTheme {
  AppTextButtonTheme._();

  static final _baseStyle = TextButton.styleFrom(
    textStyle: const TextStyle(
      fontFamily: AppFonts.cairo,
      fontSize: AppValues.fontMd,
    ),
    padding: const EdgeInsets.symmetric(
      horizontal: AppValues.md,
      vertical: AppValues.sm,
    ),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(AppValues.buttonRadius)),
    ),
  );

  static final lightTextButtonTheme = TextButtonThemeData(
    style: _baseStyle.copyWith(
      foregroundColor: WidgetStateProperty.all(AppColors.primary),
    ),
  );

  static final darkTextButtonTheme = TextButtonThemeData(
    style: _baseStyle.copyWith(
      foregroundColor: WidgetStateProperty.all(AppColors.secondary),
    ),
  );
}
