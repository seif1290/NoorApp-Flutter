import 'package:flutter/material.dart';
import 'package:noor/core/localization/l10n/app_localizations.dart';
import 'package:noor/core/utils/constants/ui_constants/app_values.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingBottom extends StatelessWidget {
  const OnboardingBottom({
    super.key,
    required this.pageController,
    required this.length,
    this.onNextPressed,
    this.onSkipPressed,
    this.onFinishPressed,
    this.isLastPage = false,
  });
  final PageController pageController;
  final int length;
  final bool isLastPage;
  final void Function()? onNextPressed;
  final void Function()? onSkipPressed;
  final void Function()? onFinishPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SmoothPageIndicator(
          controller: pageController,
          count: length,
          effect: WormEffect(
            activeDotColor: Theme.of(context).colorScheme.primaryContainer,
          ),
        ),
        const SizedBox(height: AppValues.md),
        if (!isLastPage)
          TextButton(
            onPressed: onNextPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppLocalizations.of(context)!.next,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(width: 4.0),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ],
            ),
          ),
        if (!isLastPage)
          TextButton(
            onPressed: onSkipPressed,
            child: Text(AppLocalizations.of(context)!.skip),
          ),
        if (isLastPage)
          ElevatedButton(
            onPressed: onFinishPressed ?? onSkipPressed,
            child: Text(AppLocalizations.of(context)!.getStarted),
          ),
      ],
    );
  }
}
