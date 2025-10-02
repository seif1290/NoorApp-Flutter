import 'package:dio/dio.dart';
import 'package:noor/core/di/setup.dart';
import 'package:noor/core/network/network_constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioHandler {
  final Dio dio;
  DioHandler._internal()
    : dio = Dio(
        BaseOptions(
          baseUrl: NetworkConstants.quranBaseUrl,
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 20),
          sendTimeout: const Duration(seconds: 20),
        ),
      ) {
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: false,
        responseHeader: false,
        responseBody: false,
        error: true,
        compact: true,
      ),
    );
  }
  static void setup() {
    getIt.registerLazySingleton<DioHandler>(() => DioHandler._internal());
  }
}
