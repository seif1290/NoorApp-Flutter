import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:noor/features/home/data/models/surah_model_with_audio/surah_model_with_audio.dart';
import 'package:noor/features/home/data/repos/quran_repo.dart';

part 'surah_details_state.dart';
part 'surah_details_cubit.freezed.dart';

class SurahDetailsCubit extends Cubit<SurahDetailsState> {
  late final QuranRepo _quranRepo;

  SurahDetailsCubit({required QuranRepo quranRepo})
    : super(SurahDetailsState.initial()) {
    _quranRepo = quranRepo;
  }

  Future<void> getSurah({required int surahNumber}) async {
    emit(SurahDetailsState.getSurahLoading());
    final result = await _quranRepo.getSurah(surahNumber: surahNumber);
    return result.fold(
      (failure) {
        emit(SurahDetailsState.getSurahFailed(errMsg: failure.msg));
      },
      (surah) {
        emit(SurahDetailsState.getSurahSuccess(surah: surah));
      },
    );
  }
}
