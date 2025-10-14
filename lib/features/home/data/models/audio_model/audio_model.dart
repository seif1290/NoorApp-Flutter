import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_model.freezed.dart';
part 'audio_model.g.dart';

@freezed
abstract class AudioModel with _$AudioModel {
  const factory AudioModel({
    required String reciter,
    required String originalUrl,
  }) = _AudioModel;

  factory AudioModel.fromJson(Map<String, dynamic> json) =>
      _$AudioModelFromJson(json["1"]);
}
