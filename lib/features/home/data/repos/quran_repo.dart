import 'package:dartz/dartz.dart';
import 'package:noor/core/error_handling/assets_failure.dart';
import 'package:noor/core/error_handling/failure.dart';
import 'package:noor/core/data/services/quran_assets_service.dart';
import 'package:noor/features/home/data/models/surah_metadata_model/surah_metadata_model.dart';
import 'package:noor/features/home/data/models/surah_model/surah_model.dart';

abstract interface class QuranRepo {
  Future<Either<Failure, List<SurahMetadataModel>>> getQuran();
  Future<Either<Failure, SurahModel>> getSurah({required int surahId});
}

class QuranRepoImpl implements QuranRepo {
  final QuranAssetsService _quranDataSource;
  QuranRepoImpl({required QuranAssetsService quranDataSource})
    : _quranDataSource = quranDataSource;
  @override
  Future<Either<Failure, List<SurahMetadataModel>>> getQuran() async {
    try {
      final result = await _quranDataSource.getQuranMetadata();
      return Right(result);
    } on AssetFailure catch (e) {
      return Left(AssetFailure.fromException(e));
    } catch (e) {
      return Left(AssetFailure.unknown());
    }
  }

  @override
  Future<Either<Failure, SurahModel>> getSurah({required int surahId}) async {
    try {
      final result = await _quranDataSource.getSurah(surahId: surahId);
      return Right(result);
    } on AssetFailure catch (e) {
      return Left(AssetFailure.fromException(e));
    } catch (e) {
      return Left(AssetFailure.unknown());
    }
  }
}
