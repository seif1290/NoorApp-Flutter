import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/utils/constants/ui_constants/app_colors.dart';

class AppSliderThemeData {
  AppSliderThemeData._();
  static final lightSliderThemeData = SliderThemeData(
    trackHeight: 12.0.h,
    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8.0),
    overlayShape: SliderComponentShape.noOverlay,
    activeTrackColor: AppColors.lightButtonBg,
    inactiveTrackColor: AppColors.lightIconPrimary,
    thumbColor: AppColors.lightSurface,
  );
}
