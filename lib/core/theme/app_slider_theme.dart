import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/theme/app_colors.dart';

class AppSliderTheme {
  static SliderThemeData lightTheme = SliderThemeData(
    trackHeight: 4.h,
    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6.0),
    overlayShape: SliderComponentShape.noOverlay,
    activeTrackColor: AppColors.primary500,
    inactiveTrackColor: AppColors.primary100,
    thumbColor: AppColors.primary500,
  );
}
