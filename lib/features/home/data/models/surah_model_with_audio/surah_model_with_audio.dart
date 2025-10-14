import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:noor/features/home/data/models/audio_model/audio_model.dart';
import 'package:noor/features/home/data/models/revelation_place.dart';

part 'surah_model_with_audio.freezed.dart';
part 'surah_model_with_audio.g.dart';

@freezed
abstract class SurahModelWithAudio with _$SurahModelWithAudio {
  const factory SurahModelWithAudio({
    required String surahName,
    required String surahNameArabicLong,
    required RevelationPlace revelationPlace,
    required int totalAyah,
    required AudioModel audio,
    required List<String> english,
    required List<String> arabic1,
  }) = _SurahModelWithAudio;

  factory SurahModelWithAudio.fromJson(Map<String, dynamic> json) =>
      _$SurahModelWithAudioFromJson(json);
}
