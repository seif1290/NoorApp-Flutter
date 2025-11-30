// import 'package:dio/dio.dart';
// import 'package:noor/core/di/setup.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// class QuranAudioApiService {
//   final Dio dio;

//   static const String _quranAudioBaseUrl = '';
//   QuranAudioApiService._internal()
//     : dio = Dio(
//         BaseOptions(
//           baseUrl: _quranAudioBaseUrl,
//           connectTimeout: const Duration(seconds: 10),
//           receiveTimeout: const Duration(seconds: 20),
//           sendTimeout: const Duration(seconds: 20),
//         ),
//       ) {
//     dio.interceptors.add(
//       PrettyDioLogger(
//         requestHeader: true,
//         requestBody: false,
//         responseHeader: false,
//         responseBody: false,
//         error: true,
//         compact: true,
//       ),
//     );
//   }
//   static void setup() {
//     getIt.registerLazySingleton<QuranAudioApiService>(
//       () => QuranAudioApiService._internal(),
//     );
//   }

//   Future<dynamic> get({required String endPoint}) async {
//     var response = await dio.get('$_quranAudioBaseUrl$endPoint');
//     return response.data;
//   }
// }
