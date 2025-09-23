import 'package:flutter/material.dart';
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
}
