import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:noor/core/routing/routes.dart';
import 'package:noor/core/ui/ui_helpers/ui_helper_functions.dart';
import 'package:noor/features/onboarding/data/data_source/onboarings_list.dart';
import 'package:noor/features/onboarding/data/repos/onboarding_repo.dart';
import 'package:noor/features/onboarding/presentation/view/widgets/build_page_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/features/onboarding/presentation/view/widgets/onboarding_footer.dart';
import 'package:noor/features/onboarding/presentation/view/widgets/onboarding_header.dart';

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
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  Future<void> _finishOnboarding() async {
    await widget.onboardingRepo.finishOnboarding();
    if (!mounted) return;
    context.go(Routes.home);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Header
              OnboardingHeader(currentIndex: _currentIndex),

              Gap(64.h),

              // Page View
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.w),
                child: SizedBox(
                  height: HelperFunctions.screenHeight(context) * 0.5,
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
              ),

              // Footer
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.w),
                child: OnboardingFooter(
                  isLastPage: _currentIndex == widget.onboardings.length - 1,
                  onNextPressed: () {
                    _pageController.animateToPage(
                      _currentIndex + 1,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  },
                  onFinishPressed: _finishOnboarding,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
