import 'package:flutter/material.dart';
import 'package:noor/core/theme/styles/app_colors.dart';
import 'package:noor/core/theme/styles/app_text_styles.dart';
import 'package:noor/core/utils/snack_bar_state.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
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
    content: Text(snackMessage, style: AppTextStyles.title16),
    duration: duration,
  ),
);
