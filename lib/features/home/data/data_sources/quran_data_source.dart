import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:noor/core/error_handling/assets_failure.dart';
import 'package:noor/features/home/data/models/surah_metadata_model/surah_metadata_model.dart';
import 'package:noor/features/home/data/models/surah_model/surah_model.dart';

abstract class QuranDataSource {
  Future<List<SurahMetadataModel>> getQuranMetadata();
  Future<SurahModel> getSurah({required int surahId});
}

class QuranDataSourceImpl implements QuranDataSource {
  final String _quranMetadataPath = 'assets/quran/metadata.json';
  final String _surahBase = 'assets/quran/surahs/';

  @override
  Future<List<SurahMetadataModel>> getQuranMetadata() async {
    try {
      final String data = await rootBundle.loadString(_quranMetadataPath);
      final List<dynamic> jsonList = json.decode(data);
      return jsonList
          .map((surah) => SurahMetadataModel.fromJson(surah))
          .toList();
    } catch (e) {
      throw AssetFailure.fromException(e);
    }
  }

  @override
  Future<SurahModel> getSurah({required int surahId}) async {
    try {
      final String data = await rootBundle.loadString(
        '$_surahBase$surahId.json',
      );
      final Map<String, dynamic> jsonMap = json.decode(data);
      return SurahModel.fromJson(jsonMap);
    } catch (e) {
      throw AssetFailure.fromException(e);
    }
  }
}
