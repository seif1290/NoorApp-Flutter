import 'package:flutter/material.dart';
import 'package:noor/core/ui/ui_utils/app_images.dart';
import 'package:noor/localization/l10n/app_localizations.dart';

typedef OnboardingModel = ({
  String image,
  String title,
  String subTitle,
  bool isLastPage,
});

List<OnboardingModel> onboardingsList(BuildContext context) => [
  (
    image: AppImages.onboarding1,
    title: AppLocalizations.of(context)!.onboardingTitle1,
    subTitle: AppLocalizations.of(context)!.onboardingSubtitle1,
    isLastPage: false,
  ),
  (
    image: AppImages.onboarding2,
    title: AppLocalizations.of(context)!.onboardingTitle2,
    subTitle: AppLocalizations.of(context)!.onboardingSubtitle2,
    isLastPage: false,
  ),
  (
    image: AppImages.onboarding3,
    title: AppLocalizations.of(context)!.onboardingTitle3,
    subTitle: AppLocalizations.of(context)!.onboardingSubtitle3,
    isLastPage: true,
  ),
];
