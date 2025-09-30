import 'package:freezed_annotation/freezed_annotation.dart';

part 'ayah_model.freezed.dart';
part 'ayah_model.g.dart';

@freezed
abstract class AyahModel with _$AyahModel {
  const factory AyahModel({
    required String audio,
    required String text,
    required int numberInSurah,
  }) = _AyahModel;

  factory AyahModel.fromJson(Map<String, dynamic> json) =>
      _$AyahModelFromJson(json);
}
