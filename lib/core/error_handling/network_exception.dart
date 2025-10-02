enum NetworkExceptionType {
  requestCancelled,
  unauthorisedRequest,
  badRequest,
  notFound,
  conflict,
  internalServerError,
  serviceUnavailable,
  noInternetConnection,
  sendTimeout,
  receiveTimeout,
  connectionTimeout,
  unknown,
}

class NetworkException implements Exception {
  final NetworkExceptionType type;
  final dynamic response;
  final String? message;

  NetworkException(this.type, {this.response, this.message});

  @override
  String toString() => 'NetworkException: $type, message: $message';
}
