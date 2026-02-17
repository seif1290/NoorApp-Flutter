import 'package:flutter/material.dart';

import 'package:noor/core/theme/app_card_theme.dart';
import 'package:noor/core/theme/app_color_scheme.dart';
import 'package:noor/core/theme/app_colors.dart';
import 'package:noor/core/theme/app_elevated_button_theme.dart';
import 'package:noor/core/theme/app_list_tile_theme.dart';
import 'package:noor/core/theme/app_search_bar_theme.dart';
import 'package:noor/core/theme/app_slider_theme.dart';
import 'package:noor/core/theme/app_text_button_theme.dart';
import 'package:noor/core/theme/app_text_theme.dart';
import 'package:noor/core/theme/default_app_bar_theme.dart';

class AppThemeData {
  AppThemeData._();

  static ThemeData lightTheme(BuildContext context) => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: AppColors.primary500,
    scaffoldBackgroundColor: AppColors.white,
    colorScheme: AppColorScheme.lightTheme,
    textTheme: AppTextTheme.lightTheme,
    appBarTheme: DefaultAppBarTheme.lightTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightTheme,
    textButtonTheme: AppTextButtonTheme.lightTheme,
    cardTheme: AppCardTheme.lightTheme,
    sliderTheme: AppSliderTheme.lightTheme,
    searchBarTheme: AppSearchBarTheme.lightTheme(context),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.white,
      selectedIconTheme: IconThemeData(color: AppColors.white),
      unselectedIconTheme: IconThemeData(color: AppColors.black),
      selectedItemColor: AppColors.primary500,
      landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
      type: BottomNavigationBarType.fixed,
    ),
    hintColor: AppColors.secondary200,
    listTileTheme: AppListTileTheme.lightTheme,
  );
}
