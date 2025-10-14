// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SurahModel _$SurahModelFromJson(Map<String, dynamic> json) => _SurahModel(
  surahName: json['surahName'] as String,
  surahNameArabicLong: json['surahNameArabicLong'] as String,
  revelationPlace: $enumDecode(
    _$RevelationPlaceEnumMap,
    json['revelationPlace'],
  ),
  totalAyah: (json['totalAyah'] as num).toInt(),
);

Map<String, dynamic> _$SurahModelToJson(_SurahModel instance) =>
    <String, dynamic>{
      'surahName': instance.surahName,
      'surahNameArabicLong': instance.surahNameArabicLong,
      'revelationPlace': _$RevelationPlaceEnumMap[instance.revelationPlace]!,
      'totalAyah': instance.totalAyah,
    };

const _$RevelationPlaceEnumMap = {
  RevelationPlace.Mecca: 'Mecca',
  RevelationPlace.Madina: 'Madina',
};
