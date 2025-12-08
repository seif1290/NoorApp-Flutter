import 'package:dartz/dartz.dart';
import 'package:noor/core/data/services/shared_prefs_service.dart';
import 'package:noor/core/error_handling/failure.dart';

class OnboardingRepo {
  late final SharedPrefsService _sharedPrefsService;

  OnboardingRepo({required SharedPrefsService sharedPrefsService})
    : _sharedPrefsService = sharedPrefsService;

  Future<Either<Failure, void>> finishOnboarding() async {
    try {
      await _sharedPrefsService.finishOnBoarding();
      return const Right(null);
    } catch (_) {
      return Left(Failure(arMsg: 'فشل في الإنشاء', enMsg: 'Failed to create'));
    }
  }
}
