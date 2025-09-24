import 'package:noor/core/utils/constants/ui_constants/app_images.dart';
import 'package:noor/core/utils/constants/ui_constants/app_strings.dart';
import 'package:noor/features/onboarding/data/model/onboarding_model.dart';

const List<OnboardingModel> onboardingsList = <OnboardingModel>[
  OnboardingModel(
    image: AppImages.onboarding1,
    title: AppStrings.onboardingTitle1,
    subTitle: AppStrings.onboardingSubtitle1,
  ),
  OnboardingModel(
    image: AppImages.onboarding2,
    title: AppStrings.onboardingTitle2,
    subTitle: AppStrings.onboardingSubtitle2,
  ),
  OnboardingModel(
    image: AppImages.onboarding3,
    title: AppStrings.onboardingTitle3,
    subTitle: AppStrings.onboardingSubtitle3,
    isLastPage: true,
  ),
];
