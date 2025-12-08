import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';
import 'package:noor/core/error_handling/failure.dart';
import 'package:noor/features/home/data/models/surah_model/surah_model.dart';
import 'package:noor/features/home/data/repos/audio_repo.dart';
import 'package:noor/features/home/domain/use_cases/load_surah_with_audio_use_case.dart';
import 'package:noor/core/data/models/reciter_model/reciter_model.dart';
import 'package:noor/features/settings/data/repos/reciters_repo.dart';

part 'audio_player_state.dart';
part 'audio_player_cubit.freezed.dart';

class AudioPlayerCubit extends Cubit<AudioPlayerState> {
  final AudioRepo _audioRepo;
  final RecitersRepo _recitersRepo;
  final LoadSurahWithAudioUseCase _loadSurahWithAudioUseCase;

  AudioPlayerCubit({
    required AudioRepo audioRepo,
    required RecitersRepo recitersRepo,
    required LoadSurahWithAudioUseCase loadSurahWithAudioUseCase,
  }) : _loadSurahWithAudioUseCase = loadSurahWithAudioUseCase,
       _audioRepo = audioRepo,
       _recitersRepo = recitersRepo,
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
        emit(AudioPlayerState.getSurahFailed(failure: failure));
      },
      (surah) async {
        _currentSurahNumber = surahId;
        _getCurrentReciter();
        emit(AudioPlayerState.getSurahSuccess(surah: surah));
        await playOrPause();
      },
    );
  }

  ReciterModel? _currentReciter;
  ReciterModel? get currentReciter => _currentReciter;

  Future<void> _getCurrentReciter() async {
    final result = await _recitersRepo.getCurrentReciter();
    result.fold((_) {}, (reciter) {
      _currentReciter = reciter;
      emit(AudioPlayerState.reciterLoaded(reciter: reciter));
    });
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
    await _audioRepo.seek(position: position);
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
