import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:noor/core/theme/app_colors.dart';
import 'package:noor/core/ui/ui_utils/app_images.dart';

class OnboardingHeader extends StatelessWidget {
  final int currentIndex;
  const OnboardingHeader({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Logo
        Align(
          alignment: AlignmentDirectional.topStart,
          child: SizedBox(
            width: 98.w,
            height: 98.w,
            child: Image.asset(AppImages.appLogo, fit: BoxFit.cover),
          ),
        ),

        Gap(32.h),

        // Slider
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 6.h,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 4),
            ),
            child: Slider.adaptive(
              value: (currentIndex + 1) / 3,
              activeColor: AppColors.primary,
              onChanged: (_) {},
            ),
          ),
        ),
      ],
    );
  }
}
