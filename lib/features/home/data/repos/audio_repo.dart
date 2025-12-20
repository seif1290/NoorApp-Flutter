import 'package:audio_service/audio_service.dart';
import 'package:dartz/dartz.dart';
import 'package:just_audio/just_audio.dart';
import 'package:noor/core/data/api_constants.dart';
import 'package:noor/core/services/audio_player_handler.dart';
import 'package:noor/core/services/quran_assets_service.dart';
import 'package:noor/core/services/shared_prefs_service.dart';
import 'package:noor/core/error_handling/audio_failure.dart';
import 'package:noor/core/error_handling/failure.dart';

abstract class AudioRepo {
  Future<Either<Failure, void>> loadSurah({required int surahNumber});
  Future<Either<Failure, void>> play();
  Future<Either<Failure, void>> pause();
  Future<Either<Failure, void>> seek({required Duration position});
  Future<Either<Failure, void>> stop();
  Stream<PlaybackState> get playbackStateStream;
  Duration get duration;
  Future<Either<Failure, void>> dispose();
}

class AudioRepoImpl implements AudioRepo {
  final SharedPrefsService _prefs;
  final QuranAssetsService _quranAssetsService;
  final AudioPlayerHandler _audioPlayerHandler;
  AudioRepoImpl({
    required SharedPrefsService sharedPrefsService,
    required QuranAssetsService quranAssetsService,
    required AudioPlayerHandler audioPlayerHandler,
  }) : _prefs = sharedPrefsService,
       _quranAssetsService = quranAssetsService,
       _audioPlayerHandler = audioPlayerHandler;

  @override
  Future<Either<Failure, void>> loadSurah({required int surahNumber}) async {
    try {
      final String url =
          '${ApiConstants.quranAudioBaseUrl}${_prefs.reciterIdentifier}/$surahNumber.mp3';

      final reciter = await _quranAssetsService.getReciter(
        identifier: _prefs.reciterIdentifier ?? '',
      );

      final surah = await _quranAssetsService.getSurah(surahId: surahNumber);
      MediaItem item = MediaItem(
        id: url,
        title: surah.name,
        artist: reciter.nameAr,
      );

      _audioPlayerHandler.setAudioSource(item: item);

      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  @override
  Future<Either<Failure, void>> play() async {
    try {
      await _audioPlayerHandler.play();
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  @override
  Future<Either<Failure, void>> pause() async {
    try {
      await _audioPlayerHandler.pause();
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  @override
  Future<Either<Failure, void>> seek({required Duration position}) async {
    try {
      await _audioPlayerHandler.seek(position);
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  @override
  Future<Either<Failure, void>> stop() async {
    try {
      await _audioPlayerHandler.stop();
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  @override
  Stream<PlaybackState> get playbackStateStream =>
      _audioPlayerHandler.playbackStateStream;

  @override
  Duration get duration => _audioPlayerHandler.duration;

  @override
  Future<Either<Failure, void>> dispose() async {
    try {
      await _audioPlayerHandler.dispose();
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  AudioFailure _handleError(dynamic error) {
    if (error is PlayerException) {
      return AudioFailure.fromPlayerException(error);
    }
    return AudioFailure.unknown();
  }
}
