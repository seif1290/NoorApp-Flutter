import 'package:flutter/services.dart';
import 'package:noor/core/error_handling/failure.dart';

class AssetsFailure extends Failure {
  AssetsFailure({required super.arMsg, required super.enMsg});

  factory AssetsFailure.fromDynamic(dynamic e) {
    if (e is PlatformException) {
      return AssetsFailure(
        arMsg: 'عذراً، حدث خطأ غير متوقع',
        enMsg: 'Sorry, an unexpected error occurred',
      );
    } else if (e is FormatException) {
      return AssetsFailure(
        arMsg: 'عذراً، البيانات غير صالحة. سيتم إصلاح هذا قريباً',
        enMsg: 'Sorry, the data is invalid. This will be fixed soon',
      );
    } else {
      return AssetsFailure(
        arMsg: 'عذراً، حدث خطأ غير متوقع',
        enMsg: 'Sorry, an unexpected error occurred',
      );
    }
  }
}
