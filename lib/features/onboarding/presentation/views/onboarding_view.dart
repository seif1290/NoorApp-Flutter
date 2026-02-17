import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:noor/core/theme/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:go_router/go_router.dart';
import 'package:noor/core/routing/routes.dart';
import 'package:noor/core/theme/app_text_styles.dart';
import 'package:noor/features/onboarding/data/data_source/onboarings_list.dart';
import 'package:noor/features/onboarding/data/repos/onboarding_repo.dart';
import 'package:noor/features/onboarding/presentation/widgets/build_page_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/features/onboarding/presentation/widgets/onboarding_footer.dart';
import 'package:noor/localization/l10n/app_localizations.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({
    super.key,
    required this.onboardings,
    required this.onboardingRepo,
  });
  final List<OnboardingModel> onboardings;
  final OnboardingRepo onboardingRepo;

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
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  Future<void> _finishOnboarding() async {
    await widget.onboardingRepo.finishOnboarding();
    if (!mounted) return;
    context.go(Routes.primaryScaffold);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Skip Button
              TextButton(
                onPressed: _finishOnboarding,
                child: Text(
                  '${AppLocalizations.of(context)?.skip}',
                  style: AppTextStyles.button().copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
              const Spacer(),
              // Page View
              Expanded(
                flex: 6,
                child: BuildPageView(
                  onboardings: widget.onboardings,
                  pageController: _pageController,
                  onPageChanged: (value) {
                    setState(() {
                      _currentIndex = value;
                    });
                  },
                ),
              ),

              // Smooth Page Indicator
              Center(
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: widget.onboardings.length,
                  effect: WormEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    activeDotColor: AppColors.primary500,
                    dotColor: Theme.of(context).colorScheme.onPrimaryFixed,
                  ),
                ),
              ),
              Gap(32.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: OnboardingFooter(
                  isFirstPage: _currentIndex == 0,
                  isLastPage: _currentIndex == widget.onboardings.length - 1,
                  onNextPressed: () {
                    _pageController.animateToPage(
                      _currentIndex + 1,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  },
                  onFinishPressed: _finishOnboarding,
                  onBackPressed: () {
                    _pageController.animateToPage(
                      _currentIndex - 1,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
