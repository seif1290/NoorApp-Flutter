// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayah_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AyahModel _$AyahModelFromJson(Map<String, dynamic> json) => _AyahModel(
  audio: json['audio'] as String,
  text: json['text'] as String,
  numberInSurah: (json['numberInSurah'] as num).toInt(),
);

Map<String, dynamic> _$AyahModelToJson(_AyahModel instance) =>
    <String, dynamic>{
      'audio': instance.audio,
      'text': instance.text,
      'numberInSurah': instance.numberInSurah,
    };
