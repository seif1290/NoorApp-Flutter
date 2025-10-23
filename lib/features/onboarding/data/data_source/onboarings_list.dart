import 'package:flutter/material.dart';
import 'package:noor/core/utils/app_images.dart';
import 'package:noor/localization/l10n/app_localizations.dart';
import 'package:noor/features/onboarding/data/model/onboarding_model.dart';

List<OnboardingModel> onboardingsList(BuildContext context) =>
    <OnboardingModel>[
      OnboardingModel(
        image: AppImages.onboarding1,
        title: AppLocalizations.of(context)!.onboardingTitle1,
        subTitle: AppLocalizations.of(context)!.onboardingSubtitle1,
      ),
      OnboardingModel(
        image: AppImages.onboarding2,
        title: AppLocalizations.of(context)!.onboardingTitle2,
        subTitle: AppLocalizations.of(context)!.onboardingSubtitle2,
      ),
      OnboardingModel(
        image: AppImages.onboarding3,
        title: AppLocalizations.of(context)!.onboardingTitle3,
        subTitle: AppLocalizations.of(context)!.onboardingSubtitle3,
        isLastPage: true,
      ),
    ];
