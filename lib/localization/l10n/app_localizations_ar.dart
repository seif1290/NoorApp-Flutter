// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'نور';

  @override
  String get arabic => 'العربية';

  @override
  String get english => 'الإنجليزية';

  @override
  String get pickLanguage => 'اختر اللغة';

  @override
  String get pickAppLanguage => 'اختر لغة التطبيق';

  @override
  String get onboardingTitle1 => 'استماع سهل';

  @override
  String get onboardingTitle2 => 'تحميل سريع';

  @override
  String get onboardingTitle3 => 'قراءة مريحة';

  @override
  String get onboardingTitle4 => 'أذكار يومية';

  @override
  String get onboardingSubtitle1 =>
      'استمع إلى تلاوات القرآن الكريم بأصوات قرّائك المفضلين بكل سلاسة.';

  @override
  String get onboardingSubtitle2 =>
      'حمّل السور واستمع إليها في أي وقت بدون اتصال بالإنترنت.';

  @override
  String get onboardingSubtitle3 =>
      'اقرأ آيات القرآن بوضوح وتنقّل بين السور بسهولة وهدوء.';

  @override
  String get onboardingSubtitle4 => 'اجعل الأذكار جزءًا من روتينك اليومي.';

  @override
  String get next => 'التالى';

  @override
  String get getStarted => 'ابدأ الآن';

  @override
  String get skip => 'تخطى';

  @override
  String get reciter => 'قارئ';

  @override
  String get surah => 'سورة';

  @override
  String get tarteelTitle => 'الترتيل';

  @override
  String get searhForSurah => 'ابحث عن سورة...';

  @override
  String ayah(int count) {
    return '$count آية';
  }

  @override
  String get recitations => 'التلاوات';

  @override
  String get ahadith => 'الاحاديث';

  @override
  String get adhkar => 'الاذكار';

  @override
  String get settings => 'الاعدادات';

  @override
  String get pickReciter => 'اختر القارئ';

  @override
  String get language => 'اللغة';
}
