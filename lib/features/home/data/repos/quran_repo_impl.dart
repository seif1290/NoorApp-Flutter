import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:noor/core/error_handling/failure.dart';
import 'package:noor/core/error_handling/server_failure.dart';
import 'package:noor/features/home/data/data_sources/quran_data_source.dart';
import 'package:noor/features/home/data/models/surah_model/surah_model.dart';
import 'package:noor/features/home/data/models/surah_model_with_audio/surah_model_with_audio.dart';
import 'package:noor/features/home/data/repos/quran_repo.dart';

class QuranRepoImpl implements QuranRepo {
  final QuranDataSource _quranDataSource;
  QuranRepoImpl({required QuranDataSource quranDataSource})
    : _quranDataSource = quranDataSource;
  @override
  Future<Either<Failure, List<SurahModel>>> getQuran() async {
    try {
      final result = await _quranDataSource.getQuran();
      return Right(result);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure.fromResponse());
    }
  }

  @override
  Future<Either<Failure, SurahModelWithAudio>> getSurah({
    required int surahNumber,
  }) async {
    try {
      final result = await _quranDataSource.getSurah(surahNumber: surahNumber);
      return Right(result);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure.fromResponse());
    }
  }
}
