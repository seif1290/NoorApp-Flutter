import 'package:flutter/material.dart';
import 'package:noor/core/theme/app_colors.dart';
import 'package:noor/core/theme/app_text_styles.dart';

class DefaultAppBarTheme {
  DefaultAppBarTheme._();
  static AppBarThemeData lightTheme = AppBarThemeData(
    backgroundColor: AppColors.primary500,
    iconTheme: const IconThemeData(color: AppColors.white, size: 24),
    centerTitle: true,
    titleTextStyle: AppTextStyles.h5(),
  );
}
