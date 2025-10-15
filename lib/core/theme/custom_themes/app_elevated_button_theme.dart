import 'package:flutter/material.dart';
import 'package:noor/core/utils/constants/ui_constants/app_colors.dart';
import 'package:noor/core/utils/constants/ui_constants/app_values.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  static final _baseStyle = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: AppValues.fontLg),
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
      backgroundColor: WidgetStateProperty.all(AppColors.lightButtonBg),
      foregroundColor: WidgetStateProperty.all(AppColors.lightButtonFg),
    ),
  );
}
