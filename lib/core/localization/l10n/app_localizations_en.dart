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
    return '$count Verses';
  }

  @override
  String get noInternetConnection =>
      'No internet connection. Please check your network.';

  @override
  String get connectionTimeout => 'Connection timed out. Please try again.';

  @override
  String get receiveTimeout =>
      'The server took too long to respond. Please try later.';

  @override
  String get sendTimeout =>
      'The request took too long to send. Please try again.';

  @override
  String get requestCancelled => 'The request was cancelled. Please retry.';

  @override
  String get unauthorisedRequest =>
      'You are not authorized. Please login again.';

  @override
  String get badRequest => 'Invalid request. Please check your input.';

  @override
  String get notFound => 'The requested resource was not found.';

  @override
  String get conflict => 'Conflict occurred. Please try again.';

  @override
  String get internalServerError => 'Internal server error. Please try later.';

  @override
  String get serviceUnavailable =>
      'The service is currently unavailable. Try again later.';

  @override
  String get unknownError => 'Something went wrong. Please try again.';
}
