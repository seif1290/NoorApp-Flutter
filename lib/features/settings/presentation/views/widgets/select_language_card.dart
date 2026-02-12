import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:noor/core/theme/app_colors.dart';
import 'package:noor/core/theme/app_text_styles.dart';
import 'package:noor/core/ui/ui_helpers/ui_helper_functions.dart';
import 'package:noor/core/ui/widgets/decorated_icon.dart';
import 'package:noor/localization/l10n/app_localizations.dart';
import 'package:noor/localization/l10n/l_10n.dart';
import 'package:noor/localization/locale_provider.dart';

class SelectLanguageCard extends StatelessWidget {
  const SelectLanguageCard({super.key});

  @override
  Widget build(BuildContext context) {
    final localeProvider = context.watch<LocaleProvider>();
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
        child: Row(
          children: [
            const DecoratedIcon(icon: Icons.language),
            Gap(16.w),
            Expanded(
              child: Text(
                '${AppLocalizations.of(context)?.language}',
                style: AppTextStyles.font16_20SemiBold(context).copyWith(
                  color: AppColors.primary500,
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: HelperFunctions.screenWidth(context) * 0.6,
              ),

              child: DropdownMenu(
                label: Text(
                  L10n.localeNames[localeProvider.locale.languageCode]!,
                  style: AppTextStyles.font14_18GreenRegular(context),
                ),
                trailingIcon: const Icon(
                  Icons.expand_more,
                  color: AppColors.lightGrey,
                ),
                onSelected: (locale) async {
                  if (locale != null) {
                    await localeProvider.changeLocale(locale: locale);
                  }
                },
                dropdownMenuEntries: L10n.supportedLocales
                    .map(
                      (locale) => DropdownMenuEntry(
                        value: locale,
                        label: L10n.localeNames[locale.languageCode]!,
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
