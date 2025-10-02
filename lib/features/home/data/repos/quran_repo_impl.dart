import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:noor/core/error_handling/failure.dart';
import 'package:noor/core/error_handling/network_exception.dart';
import 'package:noor/features/home/data/data_sources/quran_data_source.dart';
import 'package:noor/features/home/data/models/surah_model.dart';
import 'package:noor/features/home/data/repos/quran_repo.dart';

class QuranRepoImpl implements QuranRepo {
  final QuranDataSource _quranDataSource;
  QuranRepoImpl({required QuranDataSource quranDataSource})
    : _quranDataSource = quranDataSource;
  @override
  Future<Either<Failure, List<SurahModel>>> getQuran(
    BuildContext context,
  ) async {
    try {
      final result = await _quranDataSource.getQuran();
      return Right(result);
    } on NetworkException catch (e) {
      if (context.mounted) {
        return Left(Failure(context: context, type: e.type));
      }
      return Left(Failure(type: e.type));
    } catch (e) {
      if (context.mounted) {
        return Left(
          Failure(context: context, type: NetworkExceptionType.unknown),
        );
      }
      return Left(Failure(type: NetworkExceptionType.unknown));
    }
  }
}
