import 'package:flutter/material.dart';
import 'package:noor/core/theme/custom_themes/app_color_scheme.dart';
import 'package:noor/core/theme/custom_themes/app_outlined_button_theme.dart';
import 'package:noor/core/theme/custom_themes/app_slider_theme_data.dart';
import 'package:noor/core/theme/custom_themes/app_text_button_theme.dart';
import 'package:noor/core/theme/custom_themes/app_text_theme.dart';
import 'package:noor/core/theme/custom_themes/custom_app_bar_theme.dart';
import 'package:noor/core/theme/custom_themes/app_elevated_button_theme.dart';
import 'package:noor/core/utils/constants/ui_constants/app_colors.dart';
import 'package:noor/core/utils/constants/ui_constants/app_fonts.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: AppFonts.cairo,
    scaffoldBackgroundColor: AppColors.lightBackground,
    appBarTheme: CustomAppBarTheme.lightAppBartheme,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    textButtonTheme: AppTextButtonTheme.lightTextButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
    colorScheme: AppColorScheme.lightColorScheme,
    sliderTheme: AppSliderThemeData.lightSliderThemeData,
  );
}
