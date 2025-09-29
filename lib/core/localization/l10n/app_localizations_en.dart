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
  String get onboardingTitle1 => 'Read the Holy Quran';

  @override
  String get onboardingTitle2 => 'Listen and Reflect';

  @override
  String get onboardingTitle3 => 'Begin Your Spiritual Journey';

  @override
  String get onboardingSubtitle1 =>
      'Enjoy recitations of the Holy Quran by the best reciters';

  @override
  String get onboardingSubtitle2 =>
      'Listen to Quran recitations anytime, anywhere';

  @override
  String get onboardingSubtitle3 => 'Make the Quran your daily companion';

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
    return '$count Ayahs';
  }
}
