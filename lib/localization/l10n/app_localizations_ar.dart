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
  String get onboardingTitle1 => 'اقرأ القرآن كاملًا بدون إنترنت';

  @override
  String get onboardingTitle2 => 'تلاوة بدون تقطيع';

  @override
  String get onboardingTitle3 => 'بحث سريع ودقيق';

  @override
  String get onboardingSubtitle1 => 'خط جميل وعرض مخصص للمصحف.';

  @override
  String get onboardingSubtitle2 => 'تحميل تلقائي وصوت واضح لكل السور.';

  @override
  String get onboardingSubtitle3 => 'ابحث عن أي سورة أو آية بسهولة.';

  @override
  String get next => 'التالى';

  @override
  String get getStarted => 'ابدأ الآن';

  @override
  String get skip => 'تخطى';

  @override
  String get tarteelTitle => 'الترتيل';

  @override
  String get searhForSurah => 'ابحث عن سورة';

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
