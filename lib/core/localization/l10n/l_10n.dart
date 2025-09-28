import 'dart:ui';

abstract class L10n {
  L10n._();
  static final supportedLocales = const [Locale('ar'), Locale('en')];

  static final localeNames = {'ar': 'العربية', 'en': 'English'};
}
