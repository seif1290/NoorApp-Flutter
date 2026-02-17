import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:noor/core/models/reciter_model/reciter_model.dart';
import 'package:noor/features/tarteel/data/models/surah_metadata_model/surah_metadata_model.dart';
import 'package:noor/features/tarteel/data/models/surah_model/surah_model.dart';

class LocalAssetsService {
  final String _quranMetadataPath = 'assets/quran/metadata.json';
  final String _surahBase = 'assets/quran/surahs/';
  final String _recitersPath = 'assets/quran/reciters.json';

  Future<List<SurahMetadataModel>> getQuranMetadata() async {
    final String data = await rootBundle.loadString(_quranMetadataPath);
    final List<dynamic> jsonList = json.decode(data);
    return jsonList.map((surah) => SurahMetadataModel.fromJson(surah)).toList();
  }

  Future<SurahModel> getSurah({required int surahId}) async {
    final String data = await rootBundle.loadString('$_surahBase$surahId.json');
    final Map<String, dynamic> jsonMap = json.decode(data);
    return SurahModel.fromJson(jsonMap);
  }

  Future<List<ReciterModel>> getReciters() async {
    final String data = await rootBundle.loadString(_recitersPath);
    final List<dynamic> jsonList = json.decode(data);
    return jsonList.map((reciter) => ReciterModel.fromJson(reciter)).toList();
  }

  Future<ReciterModel> getReciter({required String identifier}) async {
    final List<ReciterModel> reciters = await getReciters();
    return reciters.firstWhere((reciter) => reciter.identifier == identifier);
  }
}
