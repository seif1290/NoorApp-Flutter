import 'package:dartz/dartz.dart';
import 'package:just_audio/just_audio.dart';
import 'package:noor/core/data/api_constants.dart';
import 'package:noor/core/error_handling/audio_failure.dart';
import 'package:noor/core/error_handling/failure.dart';
import 'package:noor/features/home/data/data_sources/audio_data_source.dart';

abstract class AudioRepo {
  Future<Either<Failure, void>> loadSurah({required int surahNumber});
  Future<Either<Failure, void>> play();
  Future<Either<Failure, void>> pause();
  Future<Either<Failure, void>> seek({required Duration position});
  Stream<Duration> get positionStream;
  Stream<Duration?> get durationStream;
  Stream<PlayerState> get playerStateStream;
  bool get isPlaying;
  Future<Either<Failure, void>> dispose();
}

class AudioRepoImpl implements AudioRepo {
  final AudioDataSource _audioDataSource;

  AudioRepoImpl({required AudioDataSource audioDataSource})
    : _audioDataSource = audioDataSource;

  @override
  Future<Either<Failure, void>> loadSurah({required int surahNumber}) async {
    try {
      await _audioDataSource.load(
        '${ApiConstants.quranAudioBaseUrl}ar.alafasy/$surahNumber.mp3',
      );
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  @override
  Future<Either<Failure, void>> play() async {
    try {
      await _audioDataSource.play();
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  @override
  Future<Either<Failure, void>> pause() async {
    try {
      await _audioDataSource.pause();
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  @override
  Future<Either<Failure, void>> seek({required Duration position}) async {
    try {
      await _audioDataSource.seek(position: position);
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  @override
  Stream<Duration> get positionStream => _audioDataSource.positionStream;
  @override
  Stream<Duration?> get durationStream => _audioDataSource.durationStream;
  @override
  Stream<PlayerState> get playerStateStream =>
      _audioDataSource.playerStateStream;
  @override
  bool get isPlaying => _audioDataSource.isPlaying;
  @override
  Future<Either<Failure, void>> dispose() async {
    try {
      await _audioDataSource.dispose();
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
