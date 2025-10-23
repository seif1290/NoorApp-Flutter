part of 'surah_details_cubit.dart';

@freezed
class SurahDetailsState with _$SurahDetailsState {
  const factory SurahDetailsState.initial() = _Initial;

  const factory SurahDetailsState.getSurahLoading() = _GetSurahLoading;
  const factory SurahDetailsState.getSurahSuccess({
    required SurahModelWithAudio surah,
    required int surahNumber,
  }) = _GetSurahSuccess;

  const factory SurahDetailsState.getSurahFailed({required Failure failure}) =
      _GetSurahFailed;
}
