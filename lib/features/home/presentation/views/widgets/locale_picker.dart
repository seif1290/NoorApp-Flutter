import 'package:flutter/material.dart';
import 'package:noor/localization/l10n/l_10n.dart';
import 'package:noor/localization/locale_provider.dart';

class LocalePicker extends StatelessWidget {
  const LocalePicker({super.key, required this.provider});

  final LocaleProvider provider;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      icon: const Icon(Icons.language_rounded),
      items: L10n.supportedLocales
          .map(
            (locale) => DropdownMenuItem(
              value: locale,
              child: Text(L10n.localeNames[locale.languageCode]!),
            ),
          )
          .toList(),
      onChanged: (locale) async {
        if (locale != null) {
          await provider.changeLocale(locale: locale);
        }
      },
      value: provider.locale,
    );
  }
}
