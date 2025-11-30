import 'package:just_audio/just_audio.dart';
import 'package:noor/core/error_handling/failure.dart';

class AudioFailure extends Failure {
  AudioFailure({required super.arMsg, required super.enMsg});

  factory AudioFailure.fromException(dynamic e) {
    if (e is PlayerException) {
      return AudioFailure.fromPlayerException(e);
    } else {
      return AudioFailure.unknown();
    }
  }
  factory AudioFailure.fromPlayerException(PlayerException e) {
    return AudioFailure(
      arMsg: 'تعذر تحميل الصوت. يرجى التحقق من اتصال الإنترنت',
      enMsg: 'Unable to load audio. Please check your internet connection',
    );
  }

  factory AudioFailure.unknown() {
    return AudioFailure(
      arMsg: 'حدث خطأ غير متوقع في الصوت',
      enMsg: 'An unexpected audio error occurred',
    );
  }
}
