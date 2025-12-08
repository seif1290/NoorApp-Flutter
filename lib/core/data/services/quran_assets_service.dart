import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:noor/core/data/models/reciter_model/reciter_model.dart';
import 'package:noor/core/error_handling/assets_failure.dart';
import 'package:noor/features/home/data/models/surah_metadata_model/surah_metadata_model.dart';
import 'package:noor/features/home/data/models/surah_model/surah_model.dart';

class QuranAssetsService {
  final String _quranMetadataPath = 'assets/quran/metadata.json';
  final String _surahBase = 'assets/quran/surahs/';
  final String _recitersPath = 'assets/quran/reciters.json';

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

  Future<List<ReciterModel>> getReciters() async {
    try {
      final String data = await rootBundle.loadString(_recitersPath);
      final List<dynamic> jsonList = json.decode(data);
      return jsonList.map((reciter) => ReciterModel.fromJson(reciter)).toList();
    } catch (e) {
      throw AssetFailure.fromException(e);
    }
  }

  Future<ReciterModel> getReciter({required String identifier}) async {
    try {
      final List<ReciterModel> reciters = await getReciters();
      return reciters.firstWhere(
        (reciter) => reciter.identifier == identifier,
        orElse: () => throw AssetFailure.unknown(),
      );
    } catch (e) {
      throw AssetFailure.fromException(e);
    }
  }
}
