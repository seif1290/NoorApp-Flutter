import 'package:flutter/material.dart';
import 'package:noor/core/utils/constants/ui_constants/app_colors.dart';

class CustomAppBarTheme {
  CustomAppBarTheme._();

  static const lightAppBartheme = AppBarTheme(
    backgroundColor: AppColors.lightSurface,
    foregroundColor: AppColors.lightTextPrimary,
    actionsIconTheme: IconThemeData(
      color: AppColors.lightIconPrimary,
      size: 14.0,
    ),
    elevation: 2,
    centerTitle: true,
  );

  static const darkAppBartheme = AppBarTheme(
    backgroundColor: AppColors.darkSurface,
    foregroundColor: AppColors.darkTextPrimary,
    actionsIconTheme: IconThemeData(
      color: AppColors.darkIconPrimary,
      size: 14.0,
    ),
    elevation: 2,
    centerTitle: true,
  );
}
