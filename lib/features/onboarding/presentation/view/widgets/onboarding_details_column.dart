import 'package:flutter/material.dart';
import 'package:noor/core/theme/app_text_styles.dart';
import 'package:noor/core/ui/ui_utils/app_values.dart';
import 'package:noor/features/onboarding/data/data_source/onboarings_list.dart';

class OnboardingDetailsColumn extends StatelessWidget {
  const OnboardingDetailsColumn({super.key, required this.onboardingModel});
  final OnboardingModel onboardingModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          onboardingModel.title,
          style: AppTextStyles.font24_28Bold(context),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppValues.padding16),
        Text(
          onboardingModel.subTitle,
          style: AppTextStyles.font16_20SemiBold(context),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
