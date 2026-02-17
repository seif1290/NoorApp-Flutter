import 'package:freezed_annotation/freezed_annotation.dart';

part 'reciter_model.freezed.dart';
part 'reciter_model.g.dart';

@freezed
abstract class ReciterModel with _$ReciterModel {
  const factory ReciterModel({
    required String identifier,
    required String nameEn,
    required String nameAr,
  }) = _ReciterModel;

  factory ReciterModel.fromJson(Map<String, dynamic> json) =>
      _$ReciterModelFromJson(json);
}
