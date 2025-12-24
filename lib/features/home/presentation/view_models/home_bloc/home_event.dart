part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getQuran() = GetQuran;
  const factory HomeEvent.search() = Search;
  const factory HomeEvent.clearSearch() = ClearSearch;
}
