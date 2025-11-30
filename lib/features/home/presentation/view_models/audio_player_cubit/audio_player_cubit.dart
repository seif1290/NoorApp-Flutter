import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';
import 'package:noor/core/error_handling/failure.dart';
import 'package:noor/features/home/data/models/surah_model/surah_model.dart';
import 'package:noor/features/home/data/repos/audio_repo.dart';
import 'package:noor/features/home/domain/use_cases/load_surah_with_audio_use_case.dart';

part 'audio_player_state.dart';
part 'audio_player_cubit.freezed.dart';

class AudioPlayerCubit extends Cubit<AudioPlayerState> {
  final AudioRepo _audioRepo;
  final LoadSurahWithAudioUseCase _loadSurahWithAudioUseCase;

  AudioPlayerCubit({
    required AudioRepo audioRepo,
    required LoadSurahWithAudioUseCase loadSurahWithAudioUseCase,
  }) : _loadSurahWithAudioUseCase = loadSurahWithAudioUseCase,
       _audioRepo = audioRepo,
       super(const AudioPlayerState.initial()) {
    _listenToAudioEvents();
  }

  int? _currentSurahNumber;
  int? get currentSurahNumber => _currentSurahNumber;
  Duration _duration = Duration.zero;

  Future<void> getSurah({required int surahId}) async {
    emit(const AudioPlayerState.getSurahLoading());
    final result = await _loadSurahWithAudioUseCase.call(surahId: surahId);
    result.fold(
      (failure) {
        emit(AudioPlayerState.failed(failure: failure));
      },
      (surah) async {
        _currentSurahNumber = surahId;
        emit(AudioPlayerState.getSurahSuccess(surah: surah));
        await playOrPause();
      },
    );
  }

  Future<void> getNextSurah() async {
    if (_currentSurahNumber == null || _currentSurahNumber == 114) {
      _currentSurahNumber = 1;
    } else {
      _currentSurahNumber = _currentSurahNumber! + 1;
    }
    await getSurah(surahId: _currentSurahNumber!);
  }

  Future<void> getPreviousSurah() async {
    if (_currentSurahNumber == null || _currentSurahNumber == 1) {
      _currentSurahNumber = 114;
    } else {
      _currentSurahNumber = _currentSurahNumber! - 1;
    }
    await getSurah(surahId: _currentSurahNumber!);
  }

  Future<void> playOrPause() async {
    if (_audioRepo.isPlaying) {
      await _audioRepo.pause();
      emit(const AudioPlayerState.audioPaused());
    } else {
      if (_currentSurahNumber != null) {
        emit(const AudioPlayerState.audioPlaying());
      }
      await _audioRepo.play();
    }
  }

  Future<void> seek({required Duration position}) async {
    final result = await _audioRepo.seek(position: position);
    result.fold(
      (failure) => emit(AudioPlayerState.failed(failure: failure)),
      (_) => {},
    );
  }

  void _listenToAudioEvents() {
    _audioRepo.positionStream.listen((pos) {
      emit(
        AudioPlayerState.audioProgressUpdated(
          position: pos,
          duration: _duration,
        ),
      );
    });

    _audioRepo.durationStream.listen((duration) {
      _duration = duration ?? Duration.zero;
    });

    _audioRepo.playerStateStream.listen((playerState) {
      if (playerState.processingState == ProcessingState.completed) {
        emit(const AudioPlayerState.audioFinished());
      }
    });
  }

  @override
  Future<void> close() async {
    await _audioRepo.dispose();
    return super.close();
  }

  void openSurahDetails() {
    emit(const AudioPlayerState.surahDetailsOpened());
  }

  void closeSurahDetails() {
    emit(const AudioPlayerState.surahDetailsClosed());
  }
}
