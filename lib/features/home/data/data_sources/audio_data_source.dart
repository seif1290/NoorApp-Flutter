import 'package:just_audio/just_audio.dart';
import 'package:noor/core/error_handling/audio_failure.dart';

abstract class AudioDataSource {
  Future<void> load(String url);
  Future<void> play();
  Future<void> pause();
  Future<void> seek({required Duration position});
  Future<void> dispose();
  Stream<Duration> get positionStream;
  Stream<Duration?> get durationStream;
  Stream<PlayerState> get playerStateStream;
  bool get isPlaying;
}

class JustAudioDataSource implements AudioDataSource {
  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  Future<void> load(String url) async {
    try {
      await _audioPlayer.stop();
      await _audioPlayer.setUrl(url);
    } catch (e) {
      throw AudioFailure.fromException(e);
    }
  }

  @override
  Future<void> play() async {
    try {
      await _audioPlayer.play();
    } catch (e) {
      throw AudioFailure.fromException(e);
    }
  }

  @override
  Future<void> pause() async {
    try {
      await _audioPlayer.pause();
    } catch (_) {
      throw AudioFailure.unknown();
    }
  }

  @override
  Future<void> seek({required Duration position}) async {
    try {
      await _audioPlayer.seek(position);
    } catch (e) {
      throw AudioFailure.fromException(e);
    }
  }

  @override
  Future<void> dispose() async {
    try {
      await _audioPlayer.dispose();
    } catch (e) {
      throw AudioFailure.fromException(e);
    }
  }

  @override
  Stream<Duration> get positionStream => _audioPlayer.positionStream;

  @override
  Stream<Duration?> get durationStream => _audioPlayer.durationStream;

  @override
  Stream<PlayerState> get playerStateStream => _audioPlayer.playerStateStream;

  @override
  bool get isPlaying => _audioPlayer.playing;
}
