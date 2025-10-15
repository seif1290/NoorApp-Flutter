import 'package:flutter/material.dart';
import 'package:noor/core/utils/constants/ui_constants/app_colors.dart';

class CustomAppBarTheme {
  CustomAppBarTheme._();

  static const lightAppBartheme = AppBarTheme(
    backgroundColor: AppColors.lightSurface,
    iconTheme: IconThemeData(color: AppColors.lightIconPrimary),
    centerTitle: true,
    titleTextStyle: TextStyle(fontSize: 20, color: AppColors.lightTextPrimary),
  );
}
