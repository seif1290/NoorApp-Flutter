part of 'audio_player_cubit.dart';

@freezed
class AudioPlayerState with _$AudioPlayerState {
  const factory AudioPlayerState.initial() = _Initial;

  const factory AudioPlayerState.getSurahLoading() = _SurahDetailsLoading;
  const factory AudioPlayerState.getSurahSuccess({required SurahModel surah}) =
      _SurahDetailsSuccess;
  const factory AudioPlayerState.failed({required Failure failure}) =
      _SurahDetailsFailed;

  const factory AudioPlayerState.audioPlaying() = _AudioPlaying;
  const factory AudioPlayerState.audioFinished() = _AudioFinished;
  const factory AudioPlayerState.audioPaused() = _AudioPaused;
  const factory AudioPlayerState.audioProgressUpdated({
    required Duration position,
    required Duration duration,
  }) = _AudioProgressUpdated;

  const factory AudioPlayerState.surahDetailsOpened() = _SurahDetailsOpened;
  const factory AudioPlayerState.surahDetailsClosed() = _SurahDetailsClosed;
}
