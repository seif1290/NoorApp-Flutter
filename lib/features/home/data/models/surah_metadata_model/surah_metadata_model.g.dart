// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_metadata_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SurahMetadataModel _$SurahMetadataModelFromJson(Map<String, dynamic> json) =>
    _SurahMetadataModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      transliteration: json['transliteration'] as String,
      type: $enumDecode(_$TypeEnumMap, json['type']),
      totalVerses: (json['totalVerses'] as num).toInt(),
    );

Map<String, dynamic> _$SurahMetadataModelToJson(_SurahMetadataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'transliteration': instance.transliteration,
      'type': _$TypeEnumMap[instance.type]!,
      'totalVerses': instance.totalVerses,
    };

const _$TypeEnumMap = {Type.meccan: 'meccan', Type.medinan: 'medinan'};
