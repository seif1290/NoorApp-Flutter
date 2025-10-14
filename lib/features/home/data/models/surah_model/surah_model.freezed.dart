// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SurahModel {

 String get surahName; String get surahNameArabicLong; RevelationPlace get revelationPlace; int get totalAyah;
/// Create a copy of SurahModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SurahModelCopyWith<SurahModel> get copyWith => _$SurahModelCopyWithImpl<SurahModel>(this as SurahModel, _$identity);

  /// Serializes this SurahModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurahModel&&(identical(other.surahName, surahName) || other.surahName == surahName)&&(identical(other.surahNameArabicLong, surahNameArabicLong) || other.surahNameArabicLong == surahNameArabicLong)&&(identical(other.revelationPlace, revelationPlace) || other.revelationPlace == revelationPlace)&&(identical(other.totalAyah, totalAyah) || other.totalAyah == totalAyah));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,surahName,surahNameArabicLong,revelationPlace,totalAyah);

@override
String toString() {
  return 'SurahModel(surahName: $surahName, surahNameArabicLong: $surahNameArabicLong, revelationPlace: $revelationPlace, totalAyah: $totalAyah)';
}


}

/// @nodoc
abstract mixin class $SurahModelCopyWith<$Res>  {
  factory $SurahModelCopyWith(SurahModel value, $Res Function(SurahModel) _then) = _$SurahModelCopyWithImpl;
@useResult
$Res call({
 String surahName, String surahNameArabicLong, RevelationPlace revelationPlace, int totalAyah
});




}
/// @nodoc
class _$SurahModelCopyWithImpl<$Res>
    implements $SurahModelCopyWith<$Res> {
  _$SurahModelCopyWithImpl(this._self, this._then);

  final SurahModel _self;
  final $Res Function(SurahModel) _then;

/// Create a copy of SurahModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? surahName = null,Object? surahNameArabicLong = null,Object? revelationPlace = null,Object? totalAyah = null,}) {
  return _then(_self.copyWith(
surahName: null == surahName ? _self.surahName : surahName // ignore: cast_nullable_to_non_nullable
as String,surahNameArabicLong: null == surahNameArabicLong ? _self.surahNameArabicLong : surahNameArabicLong // ignore: cast_nullable_to_non_nullable
as String,revelationPlace: null == revelationPlace ? _self.revelationPlace : revelationPlace // ignore: cast_nullable_to_non_nullable
as RevelationPlace,totalAyah: null == totalAyah ? _self.totalAyah : totalAyah // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SurahModel].
extension SurahModelPatterns on SurahModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SurahModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SurahModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SurahModel value)  $default,){
final _that = this;
switch (_that) {
case _SurahModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SurahModel value)?  $default,){
final _that = this;
switch (_that) {
case _SurahModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String surahName,  String surahNameArabicLong,  RevelationPlace revelationPlace,  int totalAyah)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SurahModel() when $default != null:
return $default(_that.surahName,_that.surahNameArabicLong,_that.revelationPlace,_that.totalAyah);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String surahName,  String surahNameArabicLong,  RevelationPlace revelationPlace,  int totalAyah)  $default,) {final _that = this;
switch (_that) {
case _SurahModel():
return $default(_that.surahName,_that.surahNameArabicLong,_that.revelationPlace,_that.totalAyah);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String surahName,  String surahNameArabicLong,  RevelationPlace revelationPlace,  int totalAyah)?  $default,) {final _that = this;
switch (_that) {
case _SurahModel() when $default != null:
return $default(_that.surahName,_that.surahNameArabicLong,_that.revelationPlace,_that.totalAyah);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SurahModel implements SurahModel {
  const _SurahModel({required this.surahName, required this.surahNameArabicLong, required this.revelationPlace, required this.totalAyah});
  factory _SurahModel.fromJson(Map<String, dynamic> json) => _$SurahModelFromJson(json);

@override final  String surahName;
@override final  String surahNameArabicLong;
@override final  RevelationPlace revelationPlace;
@override final  int totalAyah;

/// Create a copy of SurahModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SurahModelCopyWith<_SurahModel> get copyWith => __$SurahModelCopyWithImpl<_SurahModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SurahModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SurahModel&&(identical(other.surahName, surahName) || other.surahName == surahName)&&(identical(other.surahNameArabicLong, surahNameArabicLong) || other.surahNameArabicLong == surahNameArabicLong)&&(identical(other.revelationPlace, revelationPlace) || other.revelationPlace == revelationPlace)&&(identical(other.totalAyah, totalAyah) || other.totalAyah == totalAyah));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,surahName,surahNameArabicLong,revelationPlace,totalAyah);

@override
String toString() {
  return 'SurahModel(surahName: $surahName, surahNameArabicLong: $surahNameArabicLong, revelationPlace: $revelationPlace, totalAyah: $totalAyah)';
}


}

/// @nodoc
abstract mixin class _$SurahModelCopyWith<$Res> implements $SurahModelCopyWith<$Res> {
  factory _$SurahModelCopyWith(_SurahModel value, $Res Function(_SurahModel) _then) = __$SurahModelCopyWithImpl;
@override @useResult
$Res call({
 String surahName, String surahNameArabicLong, RevelationPlace revelationPlace, int totalAyah
});




}
/// @nodoc
class __$SurahModelCopyWithImpl<$Res>
    implements _$SurahModelCopyWith<$Res> {
  __$SurahModelCopyWithImpl(this._self, this._then);

  final _SurahModel _self;
  final $Res Function(_SurahModel) _then;

/// Create a copy of SurahModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? surahName = null,Object? surahNameArabicLong = null,Object? revelationPlace = null,Object? totalAyah = null,}) {
  return _then(_SurahModel(
surahName: null == surahName ? _self.surahName : surahName // ignore: cast_nullable_to_non_nullable
as String,surahNameArabicLong: null == surahNameArabicLong ? _self.surahNameArabicLong : surahNameArabicLong // ignore: cast_nullable_to_non_nullable
as String,revelationPlace: null == revelationPlace ? _self.revelationPlace : revelationPlace // ignore: cast_nullable_to_non_nullable
as RevelationPlace,totalAyah: null == totalAyah ? _self.totalAyah : totalAyah // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
