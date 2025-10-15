import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:just_audio/just_audio.dart';

part 'audio_player_state.dart';

class AudioPlayerCubit extends Cubit<AudioPlayerState> {
  final _audioPlayer = AudioPlayer();

  Duration _duration = Duration.zero;

  AudioPlayerCubit() : super(Initial()) {
    _listenToPosition();
  }

  Future<void> seek({required Duration position}) async {
    await _audioPlayer.seek(position);
  }

  Future<void> loadSurah({required String surahUrl}) async {
    try {
      emit(AudioLoading());
      await _audioPlayer.setUrl(surahUrl);
      emit(AudioPlaying());
      await _audioPlayer.play();
    } on PlayerException {
      emit(AudioFailed());
    } on PlayerInterruptedException {
      emit(AudioFailed());
    } catch (e) {
      debugPrint(e.toString());
      emit(AudioFailed());
    }
  }

  Future<void> playOrPause() async {
    try {
      if (_audioPlayer.playing) {
        await _audioPlayer.pause();
        emit(AudioPaused());
      } else {
        emit(AudioPlaying());
        await _audioPlayer.play();
      }
    } on PlayerException {
      emit(AudioFailed());
    } on PlayerInterruptedException {
      emit(AudioFailed());
    } catch (e) {
      debugPrint(e.toString());
      emit(AudioFailed());
    }
  }

  void _listenToPosition() {
    _audioPlayer.positionStream.listen((pos) {
      emit(AudioProgressUpdated(position: pos, duration: _duration));
    });

    _audioPlayer.durationStream.listen((d) {
      _duration = d ?? Duration.zero;
    });

    _audioPlayer.playerStateStream.listen((playerState) {
      if (playerState.processingState == ProcessingState.completed) {
        emit(AudioFinished());
      }
    });
  }

  @override
  Future<void> close() {
    _audioPlayer.dispose();
    return super.close();
  }
}
