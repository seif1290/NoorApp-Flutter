import 'package:flutter/widgets.dart';
import 'package:noor/core/error_handling/network_exception.dart';
import 'package:noor/core/localization/l10n/app_localizations.dart';

class Failure {
  final NetworkExceptionType type;
  late String msg;

  Failure({BuildContext? context, required this.type}) {
    msg = _getReadableMsg(context: context);
  }

  String _getReadableMsg({BuildContext? context}) {
    if (context == null) {
      return _englishFallback();
    }

    final l10n = AppLocalizations.of(context)!;
    switch (type) {
      case NetworkExceptionType.noInternetConnection:
        return l10n.noInternetConnection;
      case NetworkExceptionType.connectionTimeout:
        return l10n.connectionTimeout;
      case NetworkExceptionType.receiveTimeout:
        return l10n.receiveTimeout;
      case NetworkExceptionType.sendTimeout:
        return l10n.sendTimeout;
      case NetworkExceptionType.requestCancelled:
        return l10n.requestCancelled;
      case NetworkExceptionType.unauthorisedRequest:
        return l10n.unauthorisedRequest;
      case NetworkExceptionType.badRequest:
        return l10n.badRequest;
      case NetworkExceptionType.notFound:
        return l10n.notFound;
      case NetworkExceptionType.conflict:
        return l10n.conflict;
      case NetworkExceptionType.internalServerError:
        return l10n.internalServerError;
      case NetworkExceptionType.serviceUnavailable:
        return l10n.serviceUnavailable;
      case NetworkExceptionType.unknown:
        return l10n.unknownError;
    }
  }

  String _englishFallback() {
    switch (type) {
      case NetworkExceptionType.noInternetConnection:
        return "No internet connection. Please check your network.";
      case NetworkExceptionType.connectionTimeout:
        return "Connection timed out. Please try again.";
      case NetworkExceptionType.receiveTimeout:
        return "The server took too long to respond. Please try later.";
      case NetworkExceptionType.sendTimeout:
        return "The request took too long to send. Please try again.";
      case NetworkExceptionType.requestCancelled:
        return "The request was cancelled. Please retry.";
      case NetworkExceptionType.unauthorisedRequest:
        return "You are not authorized. Please login again.";
      case NetworkExceptionType.badRequest:
        return "Invalid request. Please check your input.";
      case NetworkExceptionType.notFound:
        return "The requested resource was not found.";
      case NetworkExceptionType.conflict:
        return "Conflict occurred. Please try again.";
      case NetworkExceptionType.internalServerError:
        return "Internal server error. Please try later.";
      case NetworkExceptionType.serviceUnavailable:
        return "The service is currently unavailable. Try again later.";
      case NetworkExceptionType.unknown:
        return "Something went wrong. Please try again.";
    }
  }
}
