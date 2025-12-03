import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/features/onboarding/data/data_source/onboarings_list.dart';
import 'package:noor/features/onboarding/presentation/view/widgets/onboarding_details_column.dart';

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
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 34.w),
          child: OnboardingDetailsColumn(onboardingModel: onboardings[index]),
        );
      }),
    );
  }
}
