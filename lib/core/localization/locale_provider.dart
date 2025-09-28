import 'package:flutter/material.dart';
import 'package:noor/core/localization/l10n/l_10n.dart';

class LocaleProvider extends ChangeNotifier {
  Locale? _locale;

  Locale? get locale => _locale;

  void setLocale({Locale? locale}) {
    if (!L10n.supportedLocales.contains(locale)) return;

    _locale = locale;
    notifyListeners();
  }

  void clearLocale() {
    _locale = null;
    notifyListeners();
  }
}
