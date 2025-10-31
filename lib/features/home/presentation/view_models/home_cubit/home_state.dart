part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.getQuranLoading() = _GetQuranLoading;
  const factory HomeState.getQuranSuccess({required List<SurahModel> surahs}) =
      _GetQuranSuccess;

  const factory HomeState.getQuranfailed({required Failure failure}) =
      _GetQuranFailed;

  const factory HomeState.getSurahLoading() = _GetSurahLoading;
  const factory HomeState.getSurahSuccess({
    required SurahModelWithAudio surah,
    required int surahNumber,
  }) = _GetSurahSuccess;

  const factory HomeState.getSurahFailed({required Failure failure}) =
      _GetSurahFailed;

  const factory HomeState.surahDetailsOpened() = _SurahDetailsOpened;
  const factory HomeState.surahDetailsClosed() = _SurahDetailsClosed;
}
