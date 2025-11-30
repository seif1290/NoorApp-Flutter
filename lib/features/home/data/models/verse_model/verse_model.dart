import 'package:freezed_annotation/freezed_annotation.dart';

part 'verse_model.freezed.dart';
part 'verse_model.g.dart';

@freezed
abstract class VerseModel with _$VerseModel {
  const factory VerseModel({
    required int id,
    required String text,
    required String translation,
  }) = _VerseModel;

  factory VerseModel.fromJson(Map<String, dynamic> json) =>
      _$VerseModelFromJson(json);
}
