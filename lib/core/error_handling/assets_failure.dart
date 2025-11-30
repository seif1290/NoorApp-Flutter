import 'package:flutter/services.dart';
import 'package:noor/core/error_handling/failure.dart';

class AssetFailure extends Failure {
  AssetFailure({required super.arMsg, required super.enMsg});

  factory AssetFailure.fromException(dynamic e) {
    if (e is PlatformException) {
      return AssetFailure.fromPlatformException(e);
    } else if (e is FormatException) {
      return AssetFailure.fromFormatException(e);
    } else {
      return AssetFailure.unknown();
    }
  }

  factory AssetFailure.fromPlatformException(PlatformException e) {
    return AssetFailure(
      arMsg: 'عذراً، حدث مشكلة في النظام. حاول مرة أخرى',
      enMsg: 'Sorry, there was a system issue. Please try again',
    );
  }

  factory AssetFailure.fromFormatException(FormatException e) {
    return AssetFailure(
      arMsg: 'عذراً، البيانات غير صالحة. سيتم إصلاح هذا قريباً',
      enMsg: 'Sorry, the data is invalid. This will be fixed soon',
    );
  }

  factory AssetFailure.unknown() {
    return AssetFailure(
      arMsg: 'عذراً، حدث خطأ غير متوقع',
      enMsg: 'Sorry, an unexpected error occurred',
    );
  }
}
