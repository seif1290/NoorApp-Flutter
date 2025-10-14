part of 'audio_player_cubit.dart';

sealed class AudioPlayerState {}

final class Initial extends AudioPlayerState {}

final class AudioLoading extends AudioPlayerState {}

final class AudioFailed extends AudioPlayerState {}

final class AudioFinished extends AudioPlayerState {}

final class AudioPlaying extends AudioPlayerState {}

final class AudioPaused extends AudioPlayerState {}

final class AudioProgressUpdated extends AudioPlayerState {
  final Duration position;
  final Duration duration;
  AudioProgressUpdated({required this.position, required this.duration});
}
