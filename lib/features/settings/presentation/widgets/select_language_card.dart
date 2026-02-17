import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noor/features/settings/presentation/widgets/default_settings_card.dart';
import 'package:noor/localization/l10n/app_localizations.dart';
import 'package:noor/localization/l10n/l_10n.dart';
import 'package:noor/localization/locale_provider.dart';

class SelectLanguageCard extends StatelessWidget {
  const SelectLanguageCard({super.key});

  @override
  Widget build(BuildContext context) {
    final localeProvider = context.watch<LocaleProvider>();
    return DefaultSettingsCard(
      leadingIcon: Icons.language,
      title: AppLocalizations.of(context)!.pickLanguage,
      subtitle: AppLocalizations.of(context)!.pickAppLanguage,
      trailing: DropdownButton<Locale>(
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
          color: Theme.of(context).colorScheme.onSurface,
        ),
        underline: const SizedBox.shrink(),
        value: localeProvider.locale,
        icon: Icon(
          Icons.expand_more,
          color: Theme.of(context).colorScheme.onSurface,
        ),
        onChanged: (locale) {
          if (locale != null) {
            localeProvider.changeLocale(locale: locale);
          }
        },
        items: L10n.supportedLocales
            .map(
              (locale) => DropdownMenuItem<Locale>(
                value: locale,
                child: Text(L10n.localeNames[locale.languageCode]!),
              ),
            )
            .toList(),
      ),
    );
  }
}
