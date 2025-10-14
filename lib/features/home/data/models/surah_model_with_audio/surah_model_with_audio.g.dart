// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_model_with_audio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SurahModelWithAudio _$SurahModelWithAudioFromJson(
  Map<String, dynamic> json,
) => _SurahModelWithAudio(
  surahName: json['surahName'] as String,
  surahNameArabicLong: json['surahNameArabicLong'] as String,
  revelationPlace: $enumDecode(
    _$RevelationPlaceEnumMap,
    json['revelationPlace'],
  ),
  totalAyah: (json['totalAyah'] as num).toInt(),
  audio: AudioModel.fromJson(json['audio'] as Map<String, dynamic>),
  english: (json['english'] as List<dynamic>).map((e) => e as String).toList(),
  arabic1: (json['arabic1'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$SurahModelWithAudioToJson(
  _SurahModelWithAudio instance,
) => <String, dynamic>{
  'surahName': instance.surahName,
  'surahNameArabicLong': instance.surahNameArabicLong,
  'revelationPlace': _$RevelationPlaceEnumMap[instance.revelationPlace]!,
  'totalAyah': instance.totalAyah,
  'audio': instance.audio,
  'english': instance.english,
  'arabic1': instance.arabic1,
};

const _$RevelationPlaceEnumMap = {
  RevelationPlace.Mecca: 'Mecca',
  RevelationPlace.Madina: 'Madina',
};
