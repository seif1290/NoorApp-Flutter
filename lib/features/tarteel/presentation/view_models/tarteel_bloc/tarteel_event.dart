part of 'tarteel_bloc.dart';

@freezed
class TarteelEvent with _$TarteelEvent {
  const factory TarteelEvent.getQuran() = GetQuran;
  const factory TarteelEvent.search() = Search;
  const factory TarteelEvent.clearSearch() = ClearSearch;
}
