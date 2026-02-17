import 'package:dartz/dartz.dart';
import 'package:noor/core/error_handling/assets_failure.dart';
import 'package:noor/core/services/local/local_assets_service.dart';
import 'package:noor/core/services/local/shared_prefs_service.dart';
import 'package:noor/core/error_handling/failure.dart';
import 'package:noor/core/models/reciter_model/reciter_model.dart';

class RecitersRepo {
  final LocalAssetsService _quranAssetsService;
  final SharedPrefsService _sharedPrefsService;

  RecitersRepo({
    required LocalAssetsService quranAssetsService,
    required SharedPrefsService sharedPrefsService,
  }) : _quranAssetsService = quranAssetsService,
       _sharedPrefsService = sharedPrefsService;

  Future<Either<Failure, List<ReciterModel>>> getReciters() async {
    try {
      final result = await _quranAssetsService.getReciters();
      return Right(result);
    } catch (e) {
      return Left(AssetsFailure.fromDynamic(e));
    }
  }

  Future<Either<Failure, ReciterModel>> getCurrentReciter() async {
    try {
      final String reciterIdentifier = _sharedPrefsService.reciterIdentifier!;
      final result = await _quranAssetsService.getReciter(
        identifier: reciterIdentifier,
      );
      return Right(result);
    } catch (e) {
      return Left(AssetsFailure.fromDynamic(e));
    }
  }
}
