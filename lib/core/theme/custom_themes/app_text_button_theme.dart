import 'package:flutter/material.dart';
import 'package:noor/core/utils/constants/ui_constants/app_colors.dart';
import 'package:noor/core/utils/constants/ui_constants/app_values.dart';

class AppTextButtonTheme {
  AppTextButtonTheme._();

  static final _baseStyle = TextButton.styleFrom(
    textStyle: const TextStyle(fontSize: AppValues.fontSm),
  );

  static final lightTextButtonTheme = TextButtonThemeData(
    style: _baseStyle.copyWith(
      foregroundColor: WidgetStateProperty.all(AppColors.lightTextSecondary),
    ),
  );
}
