part of 'tarteel_bloc.dart';

@freezed
class TarteelState with _$TarteelState {
  const factory TarteelState.initial() = _Initial;

  const factory TarteelState.getQuranLoading() = _GetQuranLoading;
  const factory TarteelState.getQuranSuccess({
    required List<SurahMetadataModel> surahs,
  }) = _GetQuranSuccess;

  const factory TarteelState.getQuranfailed({required Failure failure}) =
      _GetQuranFailed;
}
