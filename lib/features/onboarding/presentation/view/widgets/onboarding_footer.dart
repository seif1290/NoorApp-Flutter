import 'package:flutter/material.dart';
import 'package:noor/core/theme/app_colors.dart';
import 'package:noor/core/ui/ui_utils/app_values.dart';
import 'package:noor/localization/l10n/app_localizations.dart';

class OnboardingFooter extends StatelessWidget {
  final bool isLastPage;
  final VoidCallback? onNextPressed;
  final VoidCallback? onFinishPressed;
  const OnboardingFooter({
    super.key,
    required this.isLastPage,
    this.onNextPressed,
    this.onFinishPressed,
  });

  @override
  Widget build(BuildContext context) {
    if (!isLastPage) {
      return Column(
        children: [
          const SizedBox(height: AppValues.padding16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onNextPressed,
              child: Text(AppLocalizations.of(context)!.next),
            ),
          ),
          AppValues.gap8,
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onFinishPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.background,
                elevation: 0.0,
                foregroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: AppColors.black),
                  borderRadius: BorderRadius.circular(AppValues.radius16),
                ),
              ),
              child: Text(AppLocalizations.of(context)!.skip),
            ),
          ),
        ],
      );
    } else {
      return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onFinishPressed,
          child: Text(AppLocalizations.of(context)!.getStarted),
        ),
      );
    }
  }
}
