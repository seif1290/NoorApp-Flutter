import 'package:dio/dio.dart';
import 'package:noor/core/error_handling/failure.dart';

class ServerFailure extends Failure {
  ServerFailure({required super.arMsg, required super.enMsg});

  factory ServerFailure.fromDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
          arMsg: 'انتهت مهلة الاتصال بالخادم. حاول مرة أخرى.',
          enMsg: 'Connection timed out. Please try again.',
        );

      case DioExceptionType.sendTimeout:
        return ServerFailure(
          arMsg: 'استغرق إرسال الطلب وقتًا طويلاً. حاول مرة أخرى.',
          enMsg: 'Request sending took too long. Please try again.',
        );

      case DioExceptionType.receiveTimeout:
        return ServerFailure(
          arMsg: 'الخادم استغرق وقتاً طويلاً للرد. حاول لاحقًا.',
          enMsg: 'The server took too long to respond. Please try later.',
        );

      case DioExceptionType.badCertificate:
        return ServerFailure(
          arMsg: 'شهادة غير صالحة من الخادم.',
          enMsg: 'Invalid certificate from server.',
        );

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse();

      case DioExceptionType.cancel:
        return ServerFailure(
          arMsg: 'تم إلغاء الطلب. يرجى المحاولة مجددًا.',
          enMsg: 'The request was cancelled. Please retry.',
        );

      case DioExceptionType.connectionError:
        return ServerFailure(
          arMsg: 'لا يوجد اتصال بالإنترنت. يرجى التحقق من الشبكة.',
          enMsg: 'No internet connection. Please check your network.',
        );

      case DioExceptionType.unknown:
        return ServerFailure(
          arMsg: 'حدث خطأ غير متوقع. حاول مرة أخرى.',
          enMsg: 'An unexpected error occurred. Please try again.',
        );
    }
  }

  factory ServerFailure.fromResponse() {
    return ServerFailure(
      arMsg: 'حدث خطأ ما. حاول مرة أخرى.',
      enMsg: 'Something went wrong. Please try again.',
    );
  }
}
