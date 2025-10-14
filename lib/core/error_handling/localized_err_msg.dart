// core/localization/localization_service.dart
import 'package:flutter/material.dart';
import 'package:noor/core/error_handling/network_exception.dart';
import 'package:noor/core/localization/l10n/app_localizations.dart';

class LocalizedErrMsg {
  static late AppLocalizations? l10n;

  /// Called once when app starts (e.g., in main.dart)
  static void init(BuildContext context) {
    l10n = AppLocalizations.of(context);
  }

  static String getReadableMsg({required NetworkExceptionType type}) {
    switch (type) {
      case NetworkExceptionType.noInternetConnection:
        return l10n?.noInternetConnection ?? '';
      case NetworkExceptionType.connectionTimeout:
        return l10n?.connectionTimeout ?? '';
      case NetworkExceptionType.receiveTimeout:
        return l10n?.receiveTimeout ?? '';
      case NetworkExceptionType.sendTimeout:
        return l10n?.sendTimeout ?? '';
      case NetworkExceptionType.requestCancelled:
        return l10n?.requestCancelled ?? '';
      case NetworkExceptionType.unauthorisedRequest:
        return l10n?.unauthorisedRequest ?? '';
      case NetworkExceptionType.badRequest:
        return l10n?.badRequest ?? '';
      case NetworkExceptionType.notFound:
        return l10n?.notFound ?? '';
      case NetworkExceptionType.conflict:
        return l10n?.conflict ?? '';
      case NetworkExceptionType.internalServerError:
        return l10n?.internalServerError ?? '';
      case NetworkExceptionType.serviceUnavailable:
        return l10n?.serviceUnavailable ?? '';
      case NetworkExceptionType.unknown:
        return l10n?.unknownError ?? '';
    }
  }
}
