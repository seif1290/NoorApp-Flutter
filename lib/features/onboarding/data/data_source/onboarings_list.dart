import 'package:flutter/material.dart';
import 'package:noor/core/ui/ui_utils/custom_icons.dart';
import 'package:noor/localization/l10n/app_localizations.dart';

typedef OnboardingModel = ({
  IconData icon,
  String title,
  String subTitle,
  bool isLastPage,
});

List<OnboardingModel> onboardingsList(BuildContext context) => [
  (
    icon: Icons.headphones_outlined,
    title: AppLocalizations.of(context)!.onboardingTitle1,
    subTitle: AppLocalizations.of(context)!.onboardingSubtitle1,
    isLastPage: false,
  ),
  (
    icon: Icons.file_download_outlined,
    title: AppLocalizations.of(context)!.onboardingTitle2,
    subTitle: AppLocalizations.of(context)!.onboardingSubtitle2,
    isLastPage: false,
  ),
  (
    icon: CustomIcons.quran_01,
    title: AppLocalizations.of(context)!.onboardingTitle3,
    subTitle: AppLocalizations.of(context)!.onboardingSubtitle3,
    isLastPage: false,
  ),
  (
    icon: CustomIcons.tasbih,
    title: AppLocalizations.of(context)!.onboardingTitle4,
    subTitle: AppLocalizations.of(context)!.onboardingSubtitle4,
    isLastPage: true,
  ),
];
