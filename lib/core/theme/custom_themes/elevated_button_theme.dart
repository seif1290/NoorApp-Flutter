import 'package:flutter/material.dart';
import 'package:noor/core/utils/constants/ui_constants/app_colors.dart';
import 'package:noor/core/utils/constants/ui_constants/app_fonts.dart';
import 'package:noor/core/utils/constants/ui_constants/app_values.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  static final _baseStyle = ElevatedButton.styleFrom(
    textStyle: const TextStyle(
      fontFamily: AppFonts.cairo,
      fontSize: AppValues.fontMd,
      fontWeight: FontWeight.w600,
    ),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(AppValues.buttonRadius)),
    ),
    padding: const EdgeInsets.symmetric(
      horizontal: AppValues.md,
      vertical: AppValues.sm,
    ),
    elevation: AppValues.buttonElevation,
    minimumSize: const Size.fromHeight(AppValues.buttonHeight),
  );

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: _baseStyle.copyWith(
      backgroundColor: WidgetStateProperty.all(AppColors.buttonLightBg),
      foregroundColor: WidgetStateProperty.all(AppColors.buttonLightFg),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: _baseStyle.copyWith(
      backgroundColor: WidgetStateProperty.all(AppColors.buttonDarkBg),
      foregroundColor: WidgetStateProperty.all(AppColors.buttonDarkFg),
    ),
  );
}
