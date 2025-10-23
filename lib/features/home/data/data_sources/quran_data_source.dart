import 'package:noor/core/utils/endpoints.dart';
import 'package:noor/core/services/quran_api_service.dart';
import 'package:noor/features/home/data/models/surah_model/surah_model.dart';
import 'package:noor/features/home/data/models/surah_model_with_audio/surah_model_with_audio.dart';

abstract class QuranDataSource {
  Future<List<SurahModel>> getQuran();
  Future<SurahModelWithAudio> getSurah({required int surahNumber});
}

class QuranDataSourceImpl implements QuranDataSource {
  final QuranApiService _quranApiService;
  QuranDataSourceImpl({required QuranApiService quranApiService})
    : _quranApiService = quranApiService;

  @override
  Future<List<SurahModel>> getQuran() async {
    final data = await _quranApiService.get(
      endPoint: Endpoints.allQuranEndPoint,
    );
    return (data as List).map((surah) => SurahModel.fromJson(surah)).toList();
  }

  @override
  Future<SurahModelWithAudio> getSurah({required int surahNumber}) async {
    final data = await _quranApiService.get(endPoint: '$surahNumber.json');
    return SurahModelWithAudio.fromJson(data);
  }
}
