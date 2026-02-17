import 'package:flutter/material.dart';
import 'package:noor/core/theme/app_text_styles.dart';

class AppTextTheme {
  static TextTheme lightTheme = TextTheme(
    headlineLarge: AppTextStyles.h4(),
    headlineMedium: AppTextStyles.h5(),
    headlineSmall: AppTextStyles.h6(),
    titleLarge: AppTextStyles.subtitle1(),
    titleMedium: AppTextStyles.subtitle2(),
    bodyLarge: AppTextStyles.body1(),
    bodyMedium: AppTextStyles.body2(),
    labelLarge: AppTextStyles.button(),
    labelMedium: AppTextStyles.caption(),
    labelSmall: AppTextStyles.overline(),
  );
}
