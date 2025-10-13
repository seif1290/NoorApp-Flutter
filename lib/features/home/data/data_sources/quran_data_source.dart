import 'package:dio/dio.dart';
import 'package:noor/core/error_handling/dio_exception_handler.dart';
import 'package:noor/core/error_handling/network_exception.dart';
import 'package:noor/core/network/network_constants.dart';
import 'package:noor/features/home/data/models/surah_model.dart';

abstract class QuranDataSource {
  Future<List<SurahModel>> getQuran();
}

class QuranDataSourceImpl implements QuranDataSource {
  final Dio _dio;
  QuranDataSourceImpl({required Dio dio}) : _dio = dio;

  @override
  Future<List<SurahModel>> getQuran() async {
    try {
      final response = await _dio.get(NetworkConstants.allQuranEndPoint);
      return (response.data as List)
          .map((surah) => SurahModel.fromJson(surah))
          .toList();
    } on DioException catch (e) {
      throw DioExceptionHandler.handle(e);
    } catch (e) {
      throw NetworkException(
        NetworkExceptionType.unknown,
        message: e.toString(),
      );
    }
  }
}
