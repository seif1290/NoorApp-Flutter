import 'package:flutter/material.dart';
import 'package:noor/core/utils/constants/ui_constants/app_colors.dart';

class CustomAppBarTheme {
  CustomAppBarTheme._();

  static const lightAppBartheme = AppBarTheme(
    backgroundColor: AppColors.lightSurface,
    actionsIconTheme: IconThemeData(
      color: AppColors.lightIconPrimary,
      size: 20.0,
    ),
    centerTitle: true,
    titleTextStyle: TextStyle(fontSize: 20, color: AppColors.lightTextPrimary),
  );

  static const darkAppBartheme = AppBarTheme(
    backgroundColor: AppColors.darkSurface,
    actionsIconTheme: IconThemeData(
      color: AppColors.darkIconPrimary,
      size: 20.0,
    ),
    centerTitle: true,
    titleTextStyle: TextStyle(fontSize: 20, color: AppColors.darkTextPrimary),
  );
}
