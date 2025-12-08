part of 'reciters_cubit.dart';

@freezed
class RecitersState with _$RecitersState {
  const factory RecitersState.initial() = _Initial;

  const factory RecitersState.getRecitersSuccess() = _GetRecitersSuccess;
  const factory RecitersState.getRecitersFailed(Failure failure) =
      _GetRecitersFailed;

  const factory RecitersState.reciterSelected() = _ReciterSelected;
  const factory RecitersState.reciterLoaded() = _ReciterLoaded;
  const factory RecitersState.reciterFailed(Failure failure) = _ReciterFailed;
}
