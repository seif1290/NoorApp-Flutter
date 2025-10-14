part of 'surah_details_cubit.dart';

@freezed
class SurahDetailsState with _$SurahDetailsState {
  const factory SurahDetailsState.initial() = _Initial;

  const factory SurahDetailsState.getSurahLoading() = _GetSurahLoading;
  const factory SurahDetailsState.getSurahSuccess({
    required SurahModelWithAudio surah,
  }) = _GetSurahSuccess;

  const factory SurahDetailsState.getSurahFailed({required String errMsg}) =
      _GetSurahFailed;
}
