import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:noor/core/utils/constants/ui_constants/app_colors.dart';
import 'package:noor/core/utils/constants/ui_constants/app_values.dart';
import 'package:noor/core/utils/constants/ui_constants/snack_bar_state.dart';

class AppComponents {
  AppComponents._();

  static const EdgeInsetsGeometry pagePadding = EdgeInsets.only(
    left: AppValues.md,
    right: AppValues.md,
    top: AppValues.xl,
  );

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
    BuildContext context, {
    required String snackMessage,
    required SnackBarState snackBarState,
    Duration duration = const Duration(seconds: 4),
  }) => ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: snackBarState == SnackBarState.success
          ? AppColors.success
          : snackBarState == SnackBarState.error
          ? AppColors.error
          : AppColors.warning,
      content: Text(
        snackMessage,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      duration: duration,
    ),
  );

  static String numToArabic({required int number}) =>
      NumberFormat(null, 'ar_EG').format(number);

  static String reciterNameToArabic({required String reciterName}) {
    switch (reciterName) {
      case 'Mishary Rashid Al Afasy':
        return 'مشارى بن راشد العفاسى';
      case 'Abu Bakr Al Shatri':
        return 'أبو بكر الشاطرى';
      case 'Nasser Al Qatami':
        return 'ناصر القطامى';
      case 'Yasser Al Dosari':
        return 'ياسر الدوسرى';
      case 'Hani Ar Rifai':
        return 'هانى الرفاعى';
      default:
        return reciterName;
    }
  }

  static double screenWidth(BuildContext context) =>
      MediaQuery.sizeOf(context).width;
  static double screenHeight(BuildContext context) =>
      MediaQuery.sizeOf(context).height;
}
