import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:noor/core/services/local/shared_prefs_service.dart';
import 'package:noor/core/error_handling/failure.dart';
import 'package:noor/core/models/reciter_model/reciter_model.dart';
import 'package:noor/features/settings/data/repos/reciters_repo.dart';

part 'reciters_state.dart';
part 'reciters_cubit.freezed.dart';

class RecitersCubit extends Cubit<RecitersState> {
  final SharedPrefsService _sharedPrefsService;
  final RecitersRepo _recitersRepo;
  RecitersCubit({
    required SharedPrefsService sharedPrefsService,
    required RecitersRepo recitersRepo,
  }) : _sharedPrefsService = sharedPrefsService,
       _recitersRepo = recitersRepo,
       super(const RecitersState.initial()) {
    getCurrentReciter();
    getReciters();
  }

  ReciterModel? currentReciter;
  List<ReciterModel>? reciters;

  Future<void> getReciters() async {
    final result = await _recitersRepo.getReciters();
    result.fold((failure) => emit(RecitersState.getRecitersFailed(failure)), (
      allReciters,
    ) {
      reciters = allReciters;
      emit(const RecitersState.getRecitersSuccess());
    });
  }

  Future<void> selectReciter({String? reciterIdentifier}) async {
    if (reciterIdentifier == null) return;
    await _sharedPrefsService.setReciterIdentifier(reciterIdentifier);
    emit(const RecitersState.reciterSelected());
  }

  Future<void> getCurrentReciter() async {
    final reciter = await _recitersRepo.getCurrentReciter();
    reciter.fold((failure) => emit(RecitersState.reciterFailed(failure)), (
      reciter,
    ) {
      currentReciter = reciter;
      emit(const RecitersState.reciterLoaded());
    });
  }
}
