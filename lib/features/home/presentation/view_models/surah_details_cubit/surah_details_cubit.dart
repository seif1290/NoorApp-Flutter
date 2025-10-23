import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:noor/core/error_handling/failure.dart';
import 'package:noor/features/home/data/models/surah_model_with_audio/surah_model_with_audio.dart';
import 'package:noor/features/home/data/repos/quran_repo.dart';

part 'surah_details_state.dart';
part 'surah_details_cubit.freezed.dart';

class SurahDetailsCubit extends Cubit<SurahDetailsState> {
  late final QuranRepo _quranRepo;

  SurahDetailsCubit({required QuranRepo quranRepo})
    : super(const SurahDetailsState.initial()) {
    _quranRepo = quranRepo;
  }
  int? _nextSurahNumber;
  int? _previousSurahNumber;

  Future<void> getSurah({required int surahNumber}) async {
    emit(const SurahDetailsState.getSurahLoading());
    final result = await _quranRepo.getSurah(surahNumber: surahNumber);
    return result.fold(
      (failure) {
        emit(SurahDetailsState.getSurahFailed(failure: failure));
      },
      (surah) {
        /// [_nextSurahNumber] and [_previousSurahNumber] will be always between 1 and 114
        /// surahs number of quran is 114
        _nextSurahNumber = (surahNumber + 1) % 114;
        _previousSurahNumber = surahNumber == 1 ? 114 : surahNumber - 1;
        emit(
          SurahDetailsState.getSurahSuccess(
            surah: surah,
            surahNumber: surahNumber,
          ),
        );
      },
    );
  }

  Future<void> getNextSurah() async {
    await getSurah(surahNumber: _nextSurahNumber ?? 1);
  }

  Future<void> getPreviousSurah() async {
    await getSurah(surahNumber: _previousSurahNumber ?? 1);
  }
}
