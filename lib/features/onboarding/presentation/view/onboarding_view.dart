import 'package:flutter/material.dart';
import 'package:noor/core/utils/constants/ui_constants/app_values.dart';
import 'package:noor/features/onboarding/data/model/onboarding_model.dart';
import 'package:noor/features/onboarding/data/repos/onboarding_repo.dart';
import 'package:noor/features/onboarding/presentation/view/build_page_view.dart';
import 'package:noor/features/onboarding/presentation/view/onboarding_bottom.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({
    super.key,
    required List<OnboardingModel> onboardings,
    required OnboardingRepo onboardingRepo,
  }) : _onboardings = onboardings,
       _onboardingRepo = onboardingRepo;
  final List<OnboardingModel> _onboardings;
  final OnboardingRepo _onboardingRepo;

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  late PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  Future<void> _finishOnboarding() async {
    await widget._onboardingRepo.finishOnboarding();
    // TODO: Navigate to the next screen after onboarding
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: AppValues.appBarHeight.h,
          bottom: AppValues.lg.h,
          left: AppValues.lg.w,
          right: AppValues.lg.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: BuildPageView(
                onboardings: widget._onboardings,
                pageController: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    _currentIndex = value;
                  });
                },
              ),
            ),
            if (_currentIndex != widget._onboardings.length - 1)
              OnboardingBottom(
                pageController: _pageController,
                length: widget._onboardings.length,
                onNextPressed: () async {
                  _pageController.animateToPage(
                    _currentIndex + 1,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                },
                onSkipPressed: _finishOnboarding,
              ),
            if (_currentIndex == widget._onboardings.length - 1)
              OnboardingBottom(
                pageController: _pageController,
                length: widget._onboardings.length,
                isLastPage: true,
                onFinishPressed: _finishOnboarding,
              ),
          ],
        ),
      ),
    );
  }
}
