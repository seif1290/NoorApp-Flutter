import 'package:flutter/material.dart';
import 'package:noor/core/utils/constants/ui_constants/app_values.dart';
import 'package:noor/features/onboarding/data/model/onboarding_model.dart';
import 'package:noor/features/onboarding/data/repos/onboarding_repo.dart';
import 'package:noor/features/onboarding/presentation/view/onboarding_details_column.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () async {
              await _finishOnboarding();
            },
            child: Text('Skip'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (_currentIndex == widget._onboardings.length - 1) {
            await _finishOnboarding();
          } else {
            _pageController.animateToPage(
              _currentIndex + 1,
              duration: const Duration(milliseconds: 500),
              curve: Curves.ease,
            );
          }
        },
        child: const Icon(Icons.arrow_forward_ios),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppValues.appBarHeight,
          horizontal: AppValues.md,
        ),
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: (value) {
                _currentIndex = value;
              },
              children: List.generate(widget._onboardings.length, (index) {
                return OnboardingDetailsColumn(
                  onboardingModel: widget._onboardings[index],
                );
              }),
            ),

            Align(
              alignment: Alignment.bottomLeft,
              child: SmoothPageIndicator(
                controller: _pageController,
                count: widget._onboardings.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
