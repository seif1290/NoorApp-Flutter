import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:noor/features/home/data/models/ayah_model.dart';
import 'package:noor/features/home/data/models/revelation_type.dart';

part 'surah_model.freezed.dart';
part 'surah_model.g.dart';

@freezed
abstract class SurahModel with _$SurahModel {
  const factory SurahModel({
    required int number,
    required String name,
    required String englishName,
    required String englishNameTranslation,
    required RevelationType revelationType,
    required List<AyahModel> ayahs,
  }) = _SurahModel;

  factory SurahModel.fromJson(Map<String, dynamic> json) =>
      _$SurahModelFromJson(json);
}
