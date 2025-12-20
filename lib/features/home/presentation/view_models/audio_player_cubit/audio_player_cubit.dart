import 'dart:async';

import 'package:audio_service/audio_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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

  late final StreamSubscription _playbackSub;

  AudioPlayerCubit({
    required AudioRepo audioRepo,
    required RecitersRepo recitersRepo,
    required LoadSurahWithAudioUseCase loadSurahWithAudioUseCase,
  }) : _loadSurahWithAudioUseCase = loadSurahWithAudioUseCase,
       _audioRepo = audioRepo,
       _recitersRepo = recitersRepo,
       super(const AudioPlayerState.initial()) {
    _listenToPlayback();
  }

  int? _currentSurahNumber;
  int? get currentSurahNumber => _currentSurahNumber;

  Future<void> getSurah({required int surahId}) async {
    final result = await _loadSurahWithAudioUseCase.call(surahId: surahId);
    result.fold(
      (failure) {
        emit(AudioPlayerState.getSurahFailed(failure: failure));
      },
      (surah) async {
        _currentSurahNumber = surahId;
        _getCurrentReciter();
        emit(AudioPlayerState.getSurahSuccess(surah: surah));
      },
    );
  }

  Future<void> play() async => await _audioRepo.play();
  Future<void> pause() async => await _audioRepo.pause();
  Future<void> playOrPause() async => _isPlaying ? pause() : play();

  Future<void> seek({required Duration position}) async =>
      await _audioRepo.seek(position: position);
  Future<void> stop() async => await _audioRepo.stop();

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

  bool _isPlaying = false;

  void _listenToPlayback() {
    _playbackSub = _audioRepo.playbackStateStream.listen((state) {
      _isPlaying = state.playing;
      if (state.playing) {
        emit(
          AudioPlayerState.audioPlaying(
            position: state.position,
            duration: _audioRepo.duration,
          ),
        );
      }
      if (state.processingState == AudioProcessingState.ready &&
          state.position > Duration.zero &&
          !state.playing) {
        emit(const AudioPlayerState.audioPaused());
      }
      if (state.processingState == AudioProcessingState.ready &&
          state.position == Duration.zero) {
        play();
      }
      if (state.processingState == AudioProcessingState.completed) {
        emit(const AudioPlayerState.audioFinished());
      }
      if (state.processingState == AudioProcessingState.loading) {
        emit(const AudioPlayerState.getSurahLoading());
      }
    });
  }

  @override
  Future<void> close() async {
    _playbackSub.cancel();
    await _audioRepo.dispose();
    return super.close();
  }
}
