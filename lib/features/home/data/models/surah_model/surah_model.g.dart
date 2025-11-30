// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SurahModel _$SurahModelFromJson(Map<String, dynamic> json) => _SurahModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  transliteration: json['transliteration'] as String,
  type: $enumDecode(_$TypeEnumMap, json['type']),
  totalVerses: (json['totalVerses'] as num).toInt(),
  verses: (json['verses'] as List<dynamic>)
      .map((e) => VerseModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SurahModelToJson(_SurahModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'transliteration': instance.transliteration,
      'type': _$TypeEnumMap[instance.type]!,
      'totalVerses': instance.totalVerses,
      'verses': instance.verses,
    };

const _$TypeEnumMap = {Type.meccan: 'meccan', Type.medinan: 'medinan'};
