import 'package:flutter/material.dart';
import 'package:noor/core/theme/app_colors.dart';

class AppCardTheme {
  static CardThemeData lightTheme = CardThemeData(
    color: AppColors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusGeometry.circular(24),
    ),
    elevation: 4,
  );
}
