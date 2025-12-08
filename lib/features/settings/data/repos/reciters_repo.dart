import 'package:dartz/dartz.dart';
import 'package:noor/core/data/services/quran_assets_service.dart';
import 'package:noor/core/data/services/shared_prefs_service.dart';
import 'package:noor/core/error_handling/assets_failure.dart';
import 'package:noor/core/error_handling/failure.dart';
import 'package:noor/core/data/models/reciter_model/reciter_model.dart';

class RecitersRepo {
  final QuranAssetsService _quranAssetsService;
  final SharedPrefsService _sharedPrefsService;

  RecitersRepo({
    required QuranAssetsService quranAssetsService,
    required SharedPrefsService sharedPrefsService,
  }) : _quranAssetsService = quranAssetsService,
       _sharedPrefsService = sharedPrefsService;

  Future<Either<Failure, List<ReciterModel>>> getReciters() async {
    try {
      final result = await _quranAssetsService.getReciters();
      return Right(result);
    } on AssetFailure catch (e) {
      return Left(AssetFailure.fromException(e));
    } catch (e) {
      return Left(AssetFailure.unknown());
    }
  }

  Future<Either<Failure, ReciterModel>> getCurrentReciter() async {
    try {
      final String reciterIdentifier =
          _sharedPrefsService.reciterIdentifier ?? 'ar.alafasy';
      final result = await _quranAssetsService.getReciter(
        identifier: reciterIdentifier,
      );
      return Right(result);
    } on AssetFailure catch (e) {
      return Left(AssetFailure.fromException(e));
    } catch (e) {
      return Left(AssetFailure.unknown());
    }
  }
}
