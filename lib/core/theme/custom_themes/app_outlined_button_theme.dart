import 'package:flutter/material.dart';
import 'package:noor/core/utils/constants/ui_constants/app_colors.dart';
import 'package:noor/core/utils/constants/ui_constants/app_fonts.dart';
import 'package:noor/core/utils/constants/ui_constants/app_values.dart';

abstract class AppOutlinedButtonTheme {
  AppOutlinedButtonTheme._();

  static final _baseStyle = OutlinedButton.styleFrom(
    textStyle: const TextStyle(
      fontFamily: AppFonts.cairo,
      fontSize: AppValues.fontMd,
      fontWeight: FontWeight.w500,
    ),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(AppValues.buttonRadius)),
    ),
    padding: const EdgeInsets.symmetric(
      horizontal: AppValues.md,
      vertical: AppValues.sm,
    ),
  );

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: _baseStyle.copyWith(
      foregroundColor: WidgetStateProperty.all(AppColors.primary),
      side: WidgetStateProperty.all(
        const BorderSide(
          color: AppColors.primary,
          width: AppValues.dividerThickness + 0.5,
        ),
      ),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: _baseStyle.copyWith(
      foregroundColor: WidgetStateProperty.all(AppColors.secondary),
      side: WidgetStateProperty.all(
        const BorderSide(
          color: AppColors.secondary,
          width: AppValues.dividerThickness + 0.5,
        ),
      ),
    ),
  );
}
