import 'package:audio_service/audio_service.dart';
import 'package:dartz/dartz.dart';
import 'package:noor/core/utils/api_constants.dart';
import 'package:noor/core/services/remote/audio_player_handler.dart';
import 'package:noor/core/services/local/local_assets_service.dart';
import 'package:noor/core/services/local/shared_prefs_service.dart';
import 'package:noor/core/error_handling/audio_failure.dart';
import 'package:noor/core/error_handling/failure.dart';

abstract class AudioRepo {
  Future<Either<Failure, void>> loadSurah({required int surahNumber});
  Future<void> play();
  Future<void> pause();
  Future<void> seek({required Duration position});
  Future<void> fastForward();
  Future<void> rewind();
  Future<void> stop();
  Stream<PlaybackState> get playbackStateStream;
  Stream<Duration> get positionStream;
  Duration get duration;
  Future<void> dispose();
}

class AudioRepoImpl implements AudioRepo {
  final SharedPrefsService _prefs;
  final LocalAssetsService _quranAssetsService;
  final AudioPlayerHandler _audioPlayerHandler;
  AudioRepoImpl({
    required SharedPrefsService sharedPrefsService,
    required LocalAssetsService quranAssetsService,
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
      await _audioPlayerHandler.setAudioSource(item: item);
      return const Right(null);
    } catch (e) {
      return Left(AudioFailure.fromDynamic(e));
    }
  }

  @override
  Future<void> play() async => await _audioPlayerHandler.play();

  @override
  Future<void> pause() async => await _audioPlayerHandler.pause();

  @override
  Future<void> seek({required Duration position}) async =>
      await _audioPlayerHandler.seek(position);

  @override
  Future<void> fastForward() async => await _audioPlayerHandler.fastForward();

  @override
  Future<void> rewind() async => await _audioPlayerHandler.rewind();

  @override
  Future<void> stop() async => await _audioPlayerHandler.stop();

  @override
  Stream<PlaybackState> get playbackStateStream =>
      _audioPlayerHandler.playbackStateStream;
  @override
  Stream<Duration> get positionStream => _audioPlayerHandler.positionStream;

  @override
  Duration get duration => _audioPlayerHandler.duration;

  @override
  Future<void> dispose() async => await _audioPlayerHandler.dispose();
}
