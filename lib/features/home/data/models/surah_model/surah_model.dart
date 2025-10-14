import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:noor/features/home/data/models/revelation_place.dart';

part 'surah_model.freezed.dart';
part 'surah_model.g.dart';

@freezed
abstract class SurahModel with _$SurahModel {
  const factory SurahModel({
    required String surahName,
    required String surahNameArabicLong,
    required RevelationPlace revelationPlace,
    required int totalAyah,
  }) = _SurahModel;

  factory SurahModel.fromJson(Map<String, dynamic> json) =>
      _$SurahModelFromJson(json);
}
