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
  String get arabic => 'Arabic';

  @override
  String get english => 'English';

  @override
  String get pickLanguage => 'Pick Language';

  @override
  String get pickAppLanguage => 'Pick App Language';

  @override
  String get onboardingTitle1 => 'Easy Listening';

  @override
  String get onboardingTitle2 => 'Fast Download';

  @override
  String get onboardingTitle3 => 'Comfortable Reading';

  @override
  String get onboardingTitle4 => 'Daily Adhkar';

  @override
  String get onboardingSubtitle1 =>
      'Listen to Quran recitations by your favorite reciters seamlessly.';

  @override
  String get onboardingSubtitle2 =>
      'Download Surahs and listen to them anytime offline.';

  @override
  String get onboardingSubtitle3 =>
      'Read Quran verses clearly and navigate between Surahs easily and calmly.';

  @override
  String get onboardingSubtitle4 => 'Make Adhkar a part of your daily routine.';

  @override
  String get next => 'Next';

  @override
  String get getStarted => 'Get Started';

  @override
  String get skip => 'Skip';

  @override
  String get reciter => 'reciters';

  @override
  String get surah => 'surah';

  @override
  String get tarteelTitle => 'Tarteel';

  @override
  String get searhForSurah => 'Search for a surah...';

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
