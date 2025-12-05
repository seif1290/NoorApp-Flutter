// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Noor';

  @override
  String get onboardingTitle1 => 'Read the Quran offline';

  @override
  String get onboardingTitle2 => 'High-quality audio recitations';

  @override
  String get onboardingTitle3 => 'Fast and accurate search';

  @override
  String get onboardingSubtitle1 =>
      'Beautiful typography and a smooth mushaf-style reading experience.';

  @override
  String get onboardingSubtitle2 =>
      'Stream or download recitations from a wide range of renowned reciters.';

  @override
  String get onboardingSubtitle3 =>
      'Find any surah or ayah instantly with a powerful built-in search.';

  @override
  String get next => 'Next';

  @override
  String get getStarted => 'Get Started';

  @override
  String get skip => 'Skip';

  @override
  String get homeTitle => 'Holy Quran';

  @override
  String ayah(int count) {
    return '$count Verses';
  }

  @override
  String get recitations => 'Recitations';

  @override
  String get ahadith => 'Ahadith';

  @override
  String get adhkar => 'Adhkar';

  @override
  String get settings => 'Settings';

  @override
  String get pickReciter => 'Pick Reciter';

  @override
  String get language => 'Language';
}
