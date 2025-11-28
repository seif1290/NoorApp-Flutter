part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.getQuranLoading() = _GetQuranLoading;
  const factory HomeState.getQuranSuccess({
    required List<SurahMetadataModel> surahs,
  }) = _GetQuranSuccess;

  const factory HomeState.getQuranfailed({required Failure failure}) =
      _GetQuranFailed;

  const factory HomeState.surahDetailsOpened() = _SurahDetailsOpened;
  const factory HomeState.surahDetailsClosed() = _SurahDetailsClosed;
}
