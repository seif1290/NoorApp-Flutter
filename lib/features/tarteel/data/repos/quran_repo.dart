import 'package:dartz/dartz.dart';
import 'package:noor/core/error_handling/assets_failure.dart';
import 'package:noor/core/error_handling/failure.dart';
import 'package:noor/core/services/local/local_assets_service.dart';
import 'package:noor/features/tarteel/data/models/surah_metadata_model/surah_metadata_model.dart';
import 'package:noor/features/tarteel/data/models/surah_model/surah_model.dart';

abstract interface class QuranRepo {
  Future<Either<Failure, List<SurahMetadataModel>>> getQuran();
  Future<Either<Failure, SurahModel>> getSurah({required int surahId});
}

class QuranRepoImpl implements QuranRepo {
  final LocalAssetsService _quranDataSource;
  QuranRepoImpl({required LocalAssetsService quranDataSource})
    : _quranDataSource = quranDataSource;
  @override
  Future<Either<Failure, List<SurahMetadataModel>>> getQuran() async {
    try {
      final result = await _quranDataSource.getQuranMetadata();
      return Right(result);
    } catch (e) {
      return Left(AssetsFailure.fromDynamic(e));
    }
  }

  @override
  Future<Either<Failure, SurahModel>> getSurah({required int surahId}) async {
    try {
      final result = await _quranDataSource.getSurah(surahId: surahId);
      return Right(result);
    } catch (e) {
      return Left(AssetsFailure.fromDynamic(e));
    }
  }
}
