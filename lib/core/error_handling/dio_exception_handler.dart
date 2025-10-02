import 'package:dio/dio.dart';
import 'package:noor/core/error_handling/network_exception.dart';

class DioExceptionHandler {
  static NetworkException handle(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return NetworkException(
          NetworkExceptionType.connectionTimeout,
          response: e.response,

          message: "Connection timed out",
        );
      case DioExceptionType.sendTimeout:
        return NetworkException(
          NetworkExceptionType.sendTimeout,
          response: e.response,

          message: "Send timeout",
        );
      case DioExceptionType.receiveTimeout:
        return NetworkException(
          NetworkExceptionType.receiveTimeout,
          response: e.response,

          message: "Receive timeout",
        );
      case DioExceptionType.badResponse:
        switch (e.response?.statusCode) {
          case 400:
            return NetworkException(
              NetworkExceptionType.badRequest,
              response: e.response,

              message: "Bad request",
            );
          case 401:
            return NetworkException(
              NetworkExceptionType.unauthorisedRequest,
              response: e.response,

              message: "Unauthorized",
            );
          case 404:
            return NetworkException(
              NetworkExceptionType.notFound,
              response: e.response,

              message: "Not found",
            );
          case 409:
            return NetworkException(
              NetworkExceptionType.conflict,
              response: e.response,

              message: "Conflict",
            );
          case 500:
            return NetworkException(
              NetworkExceptionType.internalServerError,
              response: e.response,

              message: "Internal server error",
            );
          case 503:
            return NetworkException(
              NetworkExceptionType.serviceUnavailable,
              response: e.response,

              message: "Service unavailable",
            );
        }
        return NetworkException(
          NetworkExceptionType.unknown,
          response: e.response,

          message: "Unexpected error",
        );
      case DioExceptionType.cancel:
        return NetworkException(
          NetworkExceptionType.requestCancelled,
          response: e.response,

          message: "Request cancelled",
        );
      case DioExceptionType.connectionError:
        return NetworkException(
          NetworkExceptionType.noInternetConnection,
          response: e.response,
          message: "No internet connection",
        );
      default:
        return NetworkException(
          NetworkExceptionType.unknown,
          response: e.response,
          message: "Unknown error",
        );
    }
  }
}
