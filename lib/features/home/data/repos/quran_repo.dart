import 'package:dartz/dartz.dart';
import 'package:noor/core/error_handling/failure.dart';
import 'package:noor/features/home/data/models/surah_model/surah_model.dart';
import 'package:noor/features/home/data/models/surah_model_with_audio/surah_model_with_audio.dart';

abstract interface class QuranRepo {
  Future<Either<Failure, List<SurahModel>>> getQuran();
  Future<Either<Failure, SurahModelWithAudio>> getSurah({
    required int surahNumber,
  });
}
