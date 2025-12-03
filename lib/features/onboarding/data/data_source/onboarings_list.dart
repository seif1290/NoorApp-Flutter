import 'package:flutter/material.dart';
import 'package:noor/localization/l10n/app_localizations.dart';

typedef OnboardingModel = ({String title, String subTitle, bool isLastPage});

List<OnboardingModel> onboardingsList(BuildContext context) => [
  (
    title: AppLocalizations.of(context)!.onboardingTitle1,
    subTitle: AppLocalizations.of(context)!.onboardingSubtitle1,
    isLastPage: false,
  ),
  (
    title: AppLocalizations.of(context)!.onboardingTitle2,
    subTitle: AppLocalizations.of(context)!.onboardingSubtitle2,
    isLastPage: false,
  ),
  (
    title: AppLocalizations.of(context)!.onboardingTitle3,
    subTitle: AppLocalizations.of(context)!.onboardingSubtitle3,
    isLastPage: true,
  ),
];
