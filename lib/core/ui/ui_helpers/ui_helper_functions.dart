import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:noor/core/theme/app_colors.dart';
import 'package:noor/core/ui/ui_utils/app_values.dart';
import 'package:noor/core/ui/ui_utils/snack_bar_state.dart';

class HelperFunctions {
  HelperFunctions._();

  static String numToArabic({required int number}) =>
      NumberFormat(null, 'ar_EG').format(number);

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
      content: Text(snackMessage),
      duration: duration,
    ),
  );

  static const EdgeInsetsGeometry pagePadding = EdgeInsets.only(
    left: AppValues.padding16,
    right: AppValues.padding16,
    top: AppValues.padding32,
  );

  static double screenWidth(BuildContext context) =>
      MediaQuery.sizeOf(context).width;
  static double screenHeight(BuildContext context) =>
      MediaQuery.sizeOf(context).height;

  static String formatDuration({required Duration duration}) {
    final hours = duration.inHours.remainder(60).toString().padLeft(2, '0');
    final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return hours == '00' ? '$minutes:$seconds' : '$hours:$minutes:$seconds';
  }
}
