import 'package:flutter/material.dart';
import 'package:noor/core/services/shared_prefs_service.dart';
import 'package:noor/localization/l10n/l_10n.dart';

class LocaleProvider extends ChangeNotifier {
  final SharedPrefsService _sharedPrefsService;
  late Locale _locale;

  LocaleProvider(this._sharedPrefsService) {
    _setLocale();
  }

  Locale get locale => _locale;

  Future<void> _setLocale() async {
    if (_sharedPrefsService.appLanguageCode == null) {
      _locale = Locale(
        await _sharedPrefsService.setLanguageCode(languageCode: 'ar'),
      );
    } else {
      _locale = Locale(_sharedPrefsService.appLanguageCode!);
    }
  }

  Future<void> changeLocale({required Locale locale}) async {
    if (!L10n.supportedLocales.contains(locale)) return;
    _locale = locale;
    await _sharedPrefsService.setLanguageCode(
      languageCode: locale.languageCode,
    );
    notifyListeners();
  }
}
