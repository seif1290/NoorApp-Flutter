import 'package:flutter/material.dart';
import 'package:noor/core/theme/app_colors.dart';
import 'package:noor/core/theme/app_text_styles.dart';

class AppTextButtonTheme {
  static TextButtonThemeData lightTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      textStyle: AppTextStyles.button(),
      foregroundColor: AppColors.secondary500,
    ),
  );
}
