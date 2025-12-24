part of 'audio_player_cubit.dart';

@freezed
class AudioPlayerState with _$AudioPlayerState {
  const factory AudioPlayerState.initial() = _Initial;

  const factory AudioPlayerState.getSurahLoading() = _SurahDetailsLoading;
  const factory AudioPlayerState.getSurahSuccess({required SurahModel surah}) =
      _SurahDetailsSuccess;
  const factory AudioPlayerState.getSurahFailed({required Failure failure}) =
      _GetSurahFailedfailed;

  const factory AudioPlayerState.audioPlaying({
    required Duration position,
    required Duration duration,
  }) = _AudioPlaying;
  const factory AudioPlayerState.audioPaused() = _AudioPaused;

  const factory AudioPlayerState.audioFinished() = _AudioFinished;

  const factory AudioPlayerState.reciterLoaded({
    required ReciterModel reciter,
  }) = _ReciterLoaded;
}
