import 'package:flutter/material.dart';
import 'package:noor/core/utils/constants/ui_constants/app_colors.dart';
import 'package:noor/core/utils/constants/ui_constants/app_values.dart';

abstract class AppOutlinedButtonTheme {
  AppOutlinedButtonTheme._();

  static final _baseStyle = OutlinedButton.styleFrom(
    textStyle: const TextStyle(fontSize: AppValues.fontLg),
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
      foregroundColor: WidgetStateProperty.all(AppColors.lightTextPrimary),
      side: WidgetStateProperty.all(const BorderSide()),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: _baseStyle.copyWith(
      foregroundColor: WidgetStateProperty.all(AppColors.darkTextPrimary),
      side: WidgetStateProperty.all(const BorderSide()),
    ),
  );
}
