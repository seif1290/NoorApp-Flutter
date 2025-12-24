// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verse_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerseModel _$VerseModelFromJson(Map<String, dynamic> json) => _VerseModel(
  id: (json['id'] as num).toInt(),
  text: json['text'] as String,
  translation: json['translation'] as String,
);

Map<String, dynamic> _$VerseModelToJson(_VerseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'translation': instance.translation,
    };
