import 'package:flutter/material.dart';
import 'package:noor/core/utils/constants/ui_constants/app_colors.dart';

class CustomAppBarTheme {
  CustomAppBarTheme._();

  static const lightAppBartheme = AppBarTheme(
    backgroundColor: AppColors.primary,
    foregroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
  );

  static const darkAppBartheme = AppBarTheme(
    backgroundColor: AppColors.darkBackground,
    foregroundColor: AppColors.secondary,
    elevation: 0,
    centerTitle: true,
  );
}
