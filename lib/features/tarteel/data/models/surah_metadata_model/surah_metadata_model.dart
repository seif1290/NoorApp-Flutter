import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:noor/features/tarteel/data/models/type.dart';

part 'surah_metadata_model.freezed.dart';
part 'surah_metadata_model.g.dart';

@freezed
abstract class SurahMetadataModel with _$SurahMetadataModel {
  const factory SurahMetadataModel({
    required int id,
    required String name,
    required String transliteration,
    required Type type,
    required int totalVerses,
  }) = _SurahMetadataModel;

  factory SurahMetadataModel.fromJson(Map<String, dynamic> json) =>
      _$SurahMetadataModelFromJson(json);
}
