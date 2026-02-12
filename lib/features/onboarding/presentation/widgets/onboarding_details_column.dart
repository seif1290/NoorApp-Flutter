import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/theme/app_colors.dart';
import 'package:noor/features/onboarding/data/data_source/onboarings_list.dart';
import 'package:noor/features/onboarding/presentation/widgets/onboarding_icon.dart';

class OnboardingDetailsColumn extends StatelessWidget {
  const OnboardingDetailsColumn({super.key, required this.onboardingModel});
  final OnboardingModel onboardingModel;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 32.h,
        children: [
          OnboardingIcon(icon: onboardingModel.icon),
          Text(
            onboardingModel.title,
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: 64.w,
            child: const Divider(color: AppColors.neutral50, thickness: 4),
          ),

          Text(
            onboardingModel.subTitle,
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
