// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnboardingModel {

 String get title; String get subTitle; String get image; bool get isLastPage;
/// Create a copy of OnboardingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingModelCopyWith<OnboardingModel> get copyWith => _$OnboardingModelCopyWithImpl<OnboardingModel>(this as OnboardingModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingModel&&(identical(other.title, title) || other.title == title)&&(identical(other.subTitle, subTitle) || other.subTitle == subTitle)&&(identical(other.image, image) || other.image == image)&&(identical(other.isLastPage, isLastPage) || other.isLastPage == isLastPage));
}


@override
int get hashCode => Object.hash(runtimeType,title,subTitle,image,isLastPage);

@override
String toString() {
  return 'OnboardingModel(title: $title, subTitle: $subTitle, image: $image, isLastPage: $isLastPage)';
}


}

/// @nodoc
abstract mixin class $OnboardingModelCopyWith<$Res>  {
  factory $OnboardingModelCopyWith(OnboardingModel value, $Res Function(OnboardingModel) _then) = _$OnboardingModelCopyWithImpl;
@useResult
$Res call({
 String title, String subTitle, String image, bool isLastPage
});




}
/// @nodoc
class _$OnboardingModelCopyWithImpl<$Res>
    implements $OnboardingModelCopyWith<$Res> {
  _$OnboardingModelCopyWithImpl(this._self, this._then);

  final OnboardingModel _self;
  final $Res Function(OnboardingModel) _then;

/// Create a copy of OnboardingModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? subTitle = null,Object? image = null,Object? isLastPage = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subTitle: null == subTitle ? _self.subTitle : subTitle // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,isLastPage: null == isLastPage ? _self.isLastPage : isLastPage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [OnboardingModel].
extension OnboardingModelPatterns on OnboardingModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnboardingModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnboardingModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnboardingModel value)  $default,){
final _that = this;
switch (_that) {
case _OnboardingModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnboardingModel value)?  $default,){
final _that = this;
switch (_that) {
case _OnboardingModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String subTitle,  String image,  bool isLastPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnboardingModel() when $default != null:
return $default(_that.title,_that.subTitle,_that.image,_that.isLastPage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String subTitle,  String image,  bool isLastPage)  $default,) {final _that = this;
switch (_that) {
case _OnboardingModel():
return $default(_that.title,_that.subTitle,_that.image,_that.isLastPage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String subTitle,  String image,  bool isLastPage)?  $default,) {final _that = this;
switch (_that) {
case _OnboardingModel() when $default != null:
return $default(_that.title,_that.subTitle,_that.image,_that.isLastPage);case _:
  return null;

}
}

}

/// @nodoc


class _OnboardingModel implements OnboardingModel {
  const _OnboardingModel({required this.title, required this.subTitle, required this.image, this.isLastPage = false});
  

@override final  String title;
@override final  String subTitle;
@override final  String image;
@override@JsonKey() final  bool isLastPage;

/// Create a copy of OnboardingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnboardingModelCopyWith<_OnboardingModel> get copyWith => __$OnboardingModelCopyWithImpl<_OnboardingModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingModel&&(identical(other.title, title) || other.title == title)&&(identical(other.subTitle, subTitle) || other.subTitle == subTitle)&&(identical(other.image, image) || other.image == image)&&(identical(other.isLastPage, isLastPage) || other.isLastPage == isLastPage));
}


@override
int get hashCode => Object.hash(runtimeType,title,subTitle,image,isLastPage);

@override
String toString() {
  return 'OnboardingModel(title: $title, subTitle: $subTitle, image: $image, isLastPage: $isLastPage)';
}


}

/// @nodoc
abstract mixin class _$OnboardingModelCopyWith<$Res> implements $OnboardingModelCopyWith<$Res> {
  factory _$OnboardingModelCopyWith(_OnboardingModel value, $Res Function(_OnboardingModel) _then) = __$OnboardingModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String subTitle, String image, bool isLastPage
});




}
/// @nodoc
class __$OnboardingModelCopyWithImpl<$Res>
    implements _$OnboardingModelCopyWith<$Res> {
  __$OnboardingModelCopyWithImpl(this._self, this._then);

  final _OnboardingModel _self;
  final $Res Function(_OnboardingModel) _then;

/// Create a copy of OnboardingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? subTitle = null,Object? image = null,Object? isLastPage = null,}) {
  return _then(_OnboardingModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subTitle: null == subTitle ? _self.subTitle : subTitle // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,isLastPage: null == isLastPage ? _self.isLastPage : isLastPage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
