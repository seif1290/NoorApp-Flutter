import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:noor/core/error_handling/failure.dart';
import 'package:noor/features/home/data/models/surah_model/surah_model.dart';
import 'package:noor/features/home/data/repos/quran_repo.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  late final QuranRepo _quranRepo;
  HomeCubit({required QuranRepo quranRepo}) : super(const HomeState.initial()) {
    _quranRepo = quranRepo;
  }

  Future<void> getQuran() async {
    emit(const HomeState.getQuranLoading());
    final result = await _quranRepo.getQuran();
    return result.fold(
      (failure) {
        emit(HomeState.getQuranfailed(failure: failure));
      },
      (surahs) {
        emit(HomeState.getQuranSuccess(surahs: surahs));
      },
    );
  }
}
