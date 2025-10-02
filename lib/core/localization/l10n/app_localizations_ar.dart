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
  String get onboardingTitle1 => 'اقرأ القرآن الكريم';

  @override
  String get onboardingTitle2 => 'استمع وتدبر';

  @override
  String get onboardingTitle3 => 'ابدأ رحلتك الروحانية';

  @override
  String get onboardingSubtitle1 =>
      'استمتع بتلاوة القرآن الكريم بأصوات افضل القراء';

  @override
  String get onboardingSubtitle2 =>
      'تمتع بالاستماع إلى تلاوات القرآن الكريم في أي وقت وأي مكان';

  @override
  String get onboardingSubtitle3 => 'اجعل القرآن رفيقك اليومى';

  @override
  String get next => 'التالى';

  @override
  String get getStarted => 'ابدأ الآن';

  @override
  String get skip => 'تخطى';

  @override
  String get homeTitle => 'القرآن الكريم';

  @override
  String ayah(int count) {
    return '$count آية';
  }

  @override
  String get noInternetConnection =>
      'لا يوجد اتصال بالإنترنت. يرجى التحقق من الشبكة.';

  @override
  String get connectionTimeout => 'انتهت مهلة الاتصال. حاول مرة أخرى.';

  @override
  String get receiveTimeout => 'الخادم استغرق وقتاً طويلاً للرد. حاول لاحقاً.';

  @override
  String get sendTimeout => 'استغرق إرسال الطلب وقتاً طويلاً. حاول مرة أخرى.';

  @override
  String get requestCancelled => 'تم إلغاء الطلب. يرجى المحاولة مجدداً.';

  @override
  String get unauthorisedRequest => 'غير مصرح لك. يرجى تسجيل الدخول مرة أخرى.';

  @override
  String get badRequest => 'طلب غير صالح. تحقق من بياناتك.';

  @override
  String get notFound => 'المورد المطلوب غير موجود.';

  @override
  String get conflict => 'حدث تعارض. حاول مرة أخرى.';

  @override
  String get internalServerError => 'خطأ في الخادم الداخلي. حاول لاحقاً.';

  @override
  String get serviceUnavailable => 'الخدمة غير متاحة حالياً. حاول لاحقاً.';

  @override
  String get unknownError => 'حدث خطأ ما. حاول مرة أخرى.';
}
