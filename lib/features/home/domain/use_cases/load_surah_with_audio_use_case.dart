import 'package:dartz/dartz.dart';
import 'package:noor/core/error_handling/failure.dart';
import 'package:noor/features/home/data/models/surah_model/surah_model.dart';
import 'package:noor/features/home/data/repos/audio_repo.dart';
import 'package:noor/features/home/data/repos/quran_repo.dart';

class LoadSurahWithAudioUseCase {
  final QuranRepo _quranRepo;
  final AudioRepo _audioRepo;

  LoadSurahWithAudioUseCase({
    required QuranRepo quranRepo,
    required AudioRepo audioRepo,
  }) : _audioRepo = audioRepo,
       _quranRepo = quranRepo;

  Future<Either<Failure, SurahModel>> call({required int surahId}) async {
    // Load the audio
    final surahResult = await _quranRepo.getSurah(surahId: surahId);

    return await surahResult.fold((failure) => Left(failure), (surah) async {
      // Load the audio
      final audioResult = await _audioRepo.loadSurah(surahNumber: surahId);

      return audioResult.fold((failure) => Left(failure), (_) => Right(surah));
    });
  }
}
