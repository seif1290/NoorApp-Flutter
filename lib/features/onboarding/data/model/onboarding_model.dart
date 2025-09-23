import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_model.freezed.dart';

@freezed
abstract class OnboardingModel with _$OnboardingModel {
  const factory OnboardingModel({
    required String title,
    required String subTitle,
    required String image,
    @Default(false) bool isLastPage,
  }) = _OnboardingModel;
}
