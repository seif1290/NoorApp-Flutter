import 'package:noor/core/error_handling/local_exception.dart';
import 'package:noor/core/services/shared_prefs_service.dart';

class OnboardingRepo {
  late final SharedPrefsService _sharedPrefsService;

  OnboardingRepo({required SharedPrefsService sharedPrefsService})
    : _sharedPrefsService = sharedPrefsService;

  Future<void> finishOnboarding() async {
    try {
      await _sharedPrefsService.finishOnBoarding();
    } on LocalException catch (_) {
      return;
    }
  }
}
