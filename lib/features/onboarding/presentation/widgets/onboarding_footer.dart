import 'package:flutter/material.dart';
import 'package:noor/core/widgets/default_elevated_button.dart';
import 'package:noor/core/widgets/default_icon_button.dart';
import 'package:noor/localization/l10n/app_localizations.dart';

class OnboardingFooter extends StatelessWidget {
  final bool isFirstPage;
  final bool isLastPage;
  final VoidCallback? onNextPressed;
  final VoidCallback? onFinishPressed;
  final VoidCallback? onBackPressed;
  const OnboardingFooter({
    super.key,
    this.isFirstPage = false,
    this.isLastPage = false,
    this.onNextPressed,
    this.onFinishPressed,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16.0,
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          fit: FlexFit.loose,
          child: isLastPage
              ? DefaultElevatedButton(
                  text: AppLocalizations.of(context)!.getStarted,
                  onPressed: onFinishPressed,
                )
              : DefaultElevatedButton(
                  text: AppLocalizations.of(context)!.next,
                  showArrow: true,
                  onPressed: onNextPressed,
                ),
        ),

        if (!isFirstPage)
          DefaultIconbutton(isBack: true, onPressed: onBackPressed),
      ],
    );
  }
}
