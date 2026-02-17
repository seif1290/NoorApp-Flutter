import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';
import 'package:noor/core/error_handling/failure.dart';

class AudioFailure extends Failure {
  AudioFailure({required super.arMsg, required super.enMsg});

  factory AudioFailure.fromDynamic(dynamic e) {
    if (e is PlayerException) {
      return AudioFailure(
        arMsg: 'تعذر تحميل الصوت. يرجى التحقق من الاتصال بالإنترنت',
        enMsg: 'Unable to load audio. Please check your internet connection',
      );
    } else if (e is PlatformException) {
      return AudioFailure(
        arMsg: 'تعذر تحميل الصوت. يرجى التحقق من الاتصال بالإنترنت',
        enMsg: 'Unable to load audio. Please check your internet connection',
      );
    } else {
      return AudioFailure(
        arMsg: 'حدث خطأ غير متوقع في الصوت',
        enMsg: 'An unexpected audio error occurred',
      );
    }
  }
}
