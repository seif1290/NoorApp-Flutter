part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.getQuranLoading() = _GetQuranLoading;
  const factory HomeState.getQuranSuccess({
    required List<SurahMetadataModel> surahs,
  }) = _GetQuranSuccess;

  const factory HomeState.getQuranfailed({required Failure failure}) =
      _GetQuranFailed;
}
