import 'package:flutter/widgets.dart';
import 'package:noor/features/onboarding/data/model/onboarding_model.dart';
import 'package:noor/features/onboarding/presentation/view/onboarding_details_column.dart';

class BuildPageView extends StatelessWidget {
  const BuildPageView({
    super.key,
    required this.onboardings,
    required this.pageController,
    this.onPageChanged,
  });
  final List<OnboardingModel> onboardings;
  final PageController pageController;
  final Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      onPageChanged: onPageChanged,
      children: List.generate(onboardings.length, (index) {
        return OnboardingDetailsColumn(onboardingModel: onboardings[index]);
      }),
    );
  }
}
