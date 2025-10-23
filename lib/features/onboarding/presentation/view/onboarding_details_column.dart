import 'package:flutter/material.dart';
import 'package:noor/core/utils/app_components.dart';
import 'package:noor/core/utils/app_values.dart';
import 'package:noor/features/onboarding/data/model/onboarding_model.dart';

class OnboardingDetailsColumn extends StatelessWidget {
  const OnboardingDetailsColumn({super.key, required this.onboardingModel});
  final OnboardingModel onboardingModel;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: AppComponents.screenHeight(context) * 0.3,
            width: AppComponents.screenHeight(context) * 0.3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppValues.radius16),
              child: Image.asset(onboardingModel.image, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: AppValues.padding24),

          Text(
            onboardingModel.title,
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppValues.padding16),

          Text(
            onboardingModel.subTitle,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
