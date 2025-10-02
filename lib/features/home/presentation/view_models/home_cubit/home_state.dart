part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.getQuranLoading() = _GetQuranLoading;
  const factory HomeState.getQuranSuccess({required List<SurahModel> surahs}) =
      _GetQuranSuccess;
  const factory HomeState.getQuranFailed({required String errMsg}) =
      _GetQuranFailed;
}
