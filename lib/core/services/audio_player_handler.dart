import 'package:audio_service/audio_service.dart';
import 'package:just_audio/just_audio.dart';

class AudioPlayerHandler extends BaseAudioHandler with SeekHandler {
  final _player = AudioPlayer();

  AudioPlayerHandler() {
    _player.playbackEventStream.listen((event) {
      _broadcastState(event);
    });
    _player.durationStream.listen((duration) {
      if (duration == null) return;
      if (mediaItem.value == null) return;
      mediaItem.add(mediaItem.value!.copyWith(duration: duration));
    });
  }

  Future<void> setAudioSource({required MediaItem item}) async {
    if (playbackState.value.processingState == AudioProcessingState.loading) {
      return;
    }
    mediaItem.add(item);
    await _player.setAudioSource(AudioSource.uri(Uri.parse(item.id)));
  }

  @override
  Future<void> play() async => await _player.play();
  @override
  Future<void> pause() async => await _player.pause();
  @override
  Future<void> seek(Duration position) => _player.seek(position);

  @override
  Future<void> fastForward() async {
    const step = Duration(seconds: 10);
    final max = _player.duration ?? Duration.zero;
    final target = _player.position + step;
    await seek(target > max ? max : target);
  }

  @override
  Future<void> rewind() async {
    const step = Duration(seconds: 10);
    final target = _player.position - step;
    await seek(target < Duration.zero ? Duration.zero : target);
  }

  @override
  Future<void> stop() async => await _player.stop();

  Stream<PlaybackState> get playbackStateStream => playbackState.stream;
  Stream<Duration> get positionStream => _player.positionStream;
  Duration get duration => _player.duration ?? Duration.zero;

  /// Transform a just_audio event into an audio_service state.
  ///
  /// This method is used from the constructor. Every event received from the
  /// just_audio player will be transformed into an audio_service state so that
  /// it can be broadcast to audio_service clients.
  Future<void> _broadcastState(PlaybackEvent event) async {
    playbackState.add(
      playbackState.value.copyWith(
        controls: [
          if (_player.playing) MediaControl.pause else MediaControl.play,
          MediaControl.stop,
          MediaControl.fastForward,
          MediaControl.rewind,
        ],
        systemActions: const {
          MediaAction.seek,
          MediaAction.fastForward,
          MediaAction.rewind,
          MediaAction.pause,
          MediaAction.play,
          MediaAction.stop,
        },
        androidCompactActionIndices: const [0, 1, 3],
        processingState: const {
          ProcessingState.idle: AudioProcessingState.idle,
          ProcessingState.loading: AudioProcessingState.loading,
          ProcessingState.buffering: AudioProcessingState.buffering,
          ProcessingState.ready: AudioProcessingState.ready,
          ProcessingState.completed: AudioProcessingState.completed,
        }[_player.processingState]!,
        playing: _player.playing,
        updatePosition: _player.position,
        bufferedPosition: _player.bufferedPosition,
        speed: _player.speed,
        queueIndex: event.currentIndex,
      ),
    );
  }

  Future<void> dispose() async => await _player.dispose();
}
