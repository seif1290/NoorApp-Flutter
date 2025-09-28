import 'package:flutter/material.dart';
import 'package:noor/core/di/setup.dart';
import 'package:noor/core/localization/l10n/l_10n.dart';
import 'package:noor/core/localization/locale_provider.dart';
import 'package:noor/core/services/shared_prefs_service.dart';

class LocalePicker extends StatelessWidget {
  const LocalePicker({super.key, required this.provider});

  final LocaleProvider provider;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      icon: Icon(Icons.language_rounded),
      items: L10n.supportedLocales
          .map(
            (locale) => DropdownMenuItem(
              value: locale,
              child: Text(L10n.localeNames[locale.languageCode]!),
            ),
          )
          .toList(),
      onChanged: (value) async {
        provider.setLocale(locale: value);
        await getIt.get<SharedPrefsService>().setLocale(
          languageCode: value!.languageCode,
        );
      },
      value:
          provider.locale ??
          Locale(getIt.get<SharedPrefsService>().appLocale ?? 'en'),
    );
  }
}
