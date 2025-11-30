import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:noor/features/home/data/models/type.dart';
import 'package:noor/features/home/data/models/verse_model/verse_model.dart';

part 'surah_model.freezed.dart';
part 'surah_model.g.dart';

@freezed
abstract class SurahModel with _$SurahModel {
  const factory SurahModel({
    required int id,
    required String name,
    required String transliteration,
    required Type type,
    required int totalVerses,
    required List<VerseModel> verses,
  }) = _SurahModel;

  factory SurahModel.fromJson(Map<String, dynamic> json) =>
      _$SurahModelFromJson(json);
}
