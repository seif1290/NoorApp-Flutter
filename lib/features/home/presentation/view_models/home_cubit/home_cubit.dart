import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:noor/core/error_handling/failure.dart';
import 'package:noor/features/home/data/models/surah_model/surah_model.dart';
import 'package:noor/features/home/data/models/surah_model_with_audio/surah_model_with_audio.dart';
import 'package:noor/features/home/data/repos/quran_repo.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  late final QuranRepo _quranRepo;
  HomeCubit({required QuranRepo quranRepo}) : super(const HomeState.initial()) {
    _quranRepo = quranRepo;
  }

  int? _nextSurahNumber;
  int? _previousSurahNumber;
  SurahModelWithAudio? _currentSurah;
  int? _currentSurahNumber;

  SurahModelWithAudio? get currentSurah => _currentSurah;
  int? get currentSurahNumber => _currentSurahNumber;

  void openSurahDetails() {
    emit(const HomeState.surahDetailsOpened());
  }

  void closeSurahDetails() {
    emit(const HomeState.surahDetailsClosed());
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

  Future<void> getSurah({required int surahNumber}) async {
    emit(const HomeState.getSurahLoading());
    final result = await _quranRepo.getSurah(surahNumber: surahNumber);
    return result.fold(
      (failure) {
        emit(HomeState.getSurahFailed(failure: failure));
      },
      (surah) {
        _currentSurah = surah;
        _currentSurahNumber = surahNumber;

        /// [_nextSurahNumber] and [_previousSurahNumber] will be always between 1 and 114
        /// surahs number of quran is 114
        _nextSurahNumber = (surahNumber + 1) % 115;
        _previousSurahNumber = surahNumber == 1 ? 114 : surahNumber - 1;
        if (_nextSurahNumber == 0) _nextSurahNumber = 1;
        if (_previousSurahNumber == 0) _previousSurahNumber = 114;
        emit(HomeState.getSurahSuccess(surah: surah, surahNumber: surahNumber));
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
