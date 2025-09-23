import 'package:flutter/material.dart';
import 'package:noor/core/utils/constants/ui_constants/app_values.dart';
import 'package:noor/features/onboarding/data/model/onboarding_model.dart';

class OnboardingDetailsColumn extends StatelessWidget {
  const OnboardingDetailsColumn({super.key, required this.onboardingModel});
  final OnboardingModel onboardingModel;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: screenHeight * 0.3,
            width: screenWidth * 0.8,
            child: Image.asset(onboardingModel.image, fit: BoxFit.contain),
          ),
          const SizedBox(height: AppValues.lg),

          Text(
            onboardingModel.title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: AppValues.md),

          Text(
            onboardingModel.subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
