// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_model_with_audio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SurahModelWithAudio {

 String get surahName; String get surahNameArabicLong; RevelationPlace get revelationPlace; int get totalAyah; AudioModel get audio; List<String> get english; List<String> get arabic1;
/// Create a copy of SurahModelWithAudio
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SurahModelWithAudioCopyWith<SurahModelWithAudio> get copyWith => _$SurahModelWithAudioCopyWithImpl<SurahModelWithAudio>(this as SurahModelWithAudio, _$identity);

  /// Serializes this SurahModelWithAudio to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurahModelWithAudio&&(identical(other.surahName, surahName) || other.surahName == surahName)&&(identical(other.surahNameArabicLong, surahNameArabicLong) || other.surahNameArabicLong == surahNameArabicLong)&&(identical(other.revelationPlace, revelationPlace) || other.revelationPlace == revelationPlace)&&(identical(other.totalAyah, totalAyah) || other.totalAyah == totalAyah)&&(identical(other.audio, audio) || other.audio == audio)&&const DeepCollectionEquality().equals(other.english, english)&&const DeepCollectionEquality().equals(other.arabic1, arabic1));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,surahName,surahNameArabicLong,revelationPlace,totalAyah,audio,const DeepCollectionEquality().hash(english),const DeepCollectionEquality().hash(arabic1));

@override
String toString() {
  return 'SurahModelWithAudio(surahName: $surahName, surahNameArabicLong: $surahNameArabicLong, revelationPlace: $revelationPlace, totalAyah: $totalAyah, audio: $audio, english: $english, arabic1: $arabic1)';
}


}

/// @nodoc
abstract mixin class $SurahModelWithAudioCopyWith<$Res>  {
  factory $SurahModelWithAudioCopyWith(SurahModelWithAudio value, $Res Function(SurahModelWithAudio) _then) = _$SurahModelWithAudioCopyWithImpl;
@useResult
$Res call({
 String surahName, String surahNameArabicLong, RevelationPlace revelationPlace, int totalAyah, AudioModel audio, List<String> english, List<String> arabic1
});


$AudioModelCopyWith<$Res> get audio;

}
/// @nodoc
class _$SurahModelWithAudioCopyWithImpl<$Res>
    implements $SurahModelWithAudioCopyWith<$Res> {
  _$SurahModelWithAudioCopyWithImpl(this._self, this._then);

  final SurahModelWithAudio _self;
  final $Res Function(SurahModelWithAudio) _then;

/// Create a copy of SurahModelWithAudio
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? surahName = null,Object? surahNameArabicLong = null,Object? revelationPlace = null,Object? totalAyah = null,Object? audio = null,Object? english = null,Object? arabic1 = null,}) {
  return _then(_self.copyWith(
surahName: null == surahName ? _self.surahName : surahName // ignore: cast_nullable_to_non_nullable
as String,surahNameArabicLong: null == surahNameArabicLong ? _self.surahNameArabicLong : surahNameArabicLong // ignore: cast_nullable_to_non_nullable
as String,revelationPlace: null == revelationPlace ? _self.revelationPlace : revelationPlace // ignore: cast_nullable_to_non_nullable
as RevelationPlace,totalAyah: null == totalAyah ? _self.totalAyah : totalAyah // ignore: cast_nullable_to_non_nullable
as int,audio: null == audio ? _self.audio : audio // ignore: cast_nullable_to_non_nullable
as AudioModel,english: null == english ? _self.english : english // ignore: cast_nullable_to_non_nullable
as List<String>,arabic1: null == arabic1 ? _self.arabic1 : arabic1 // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of SurahModelWithAudio
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AudioModelCopyWith<$Res> get audio {
  
  return $AudioModelCopyWith<$Res>(_self.audio, (value) {
    return _then(_self.copyWith(audio: value));
  });
}
}


/// Adds pattern-matching-related methods to [SurahModelWithAudio].
extension SurahModelWithAudioPatterns on SurahModelWithAudio {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SurahModelWithAudio value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SurahModelWithAudio() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SurahModelWithAudio value)  $default,){
final _that = this;
switch (_that) {
case _SurahModelWithAudio():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SurahModelWithAudio value)?  $default,){
final _that = this;
switch (_that) {
case _SurahModelWithAudio() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String surahName,  String surahNameArabicLong,  RevelationPlace revelationPlace,  int totalAyah,  AudioModel audio,  List<String> english,  List<String> arabic1)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SurahModelWithAudio() when $default != null:
return $default(_that.surahName,_that.surahNameArabicLong,_that.revelationPlace,_that.totalAyah,_that.audio,_that.english,_that.arabic1);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String surahName,  String surahNameArabicLong,  RevelationPlace revelationPlace,  int totalAyah,  AudioModel audio,  List<String> english,  List<String> arabic1)  $default,) {final _that = this;
switch (_that) {
case _SurahModelWithAudio():
return $default(_that.surahName,_that.surahNameArabicLong,_that.revelationPlace,_that.totalAyah,_that.audio,_that.english,_that.arabic1);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String surahName,  String surahNameArabicLong,  RevelationPlace revelationPlace,  int totalAyah,  AudioModel audio,  List<String> english,  List<String> arabic1)?  $default,) {final _that = this;
switch (_that) {
case _SurahModelWithAudio() when $default != null:
return $default(_that.surahName,_that.surahNameArabicLong,_that.revelationPlace,_that.totalAyah,_that.audio,_that.english,_that.arabic1);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SurahModelWithAudio implements SurahModelWithAudio {
  const _SurahModelWithAudio({required this.surahName, required this.surahNameArabicLong, required this.revelationPlace, required this.totalAyah, required this.audio, required final  List<String> english, required final  List<String> arabic1}): _english = english,_arabic1 = arabic1;
  factory _SurahModelWithAudio.fromJson(Map<String, dynamic> json) => _$SurahModelWithAudioFromJson(json);

@override final  String surahName;
@override final  String surahNameArabicLong;
@override final  RevelationPlace revelationPlace;
@override final  int totalAyah;
@override final  AudioModel audio;
 final  List<String> _english;
@override List<String> get english {
  if (_english is EqualUnmodifiableListView) return _english;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_english);
}

 final  List<String> _arabic1;
@override List<String> get arabic1 {
  if (_arabic1 is EqualUnmodifiableListView) return _arabic1;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_arabic1);
}


/// Create a copy of SurahModelWithAudio
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SurahModelWithAudioCopyWith<_SurahModelWithAudio> get copyWith => __$SurahModelWithAudioCopyWithImpl<_SurahModelWithAudio>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SurahModelWithAudioToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SurahModelWithAudio&&(identical(other.surahName, surahName) || other.surahName == surahName)&&(identical(other.surahNameArabicLong, surahNameArabicLong) || other.surahNameArabicLong == surahNameArabicLong)&&(identical(other.revelationPlace, revelationPlace) || other.revelationPlace == revelationPlace)&&(identical(other.totalAyah, totalAyah) || other.totalAyah == totalAyah)&&(identical(other.audio, audio) || other.audio == audio)&&const DeepCollectionEquality().equals(other._english, _english)&&const DeepCollectionEquality().equals(other._arabic1, _arabic1));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,surahName,surahNameArabicLong,revelationPlace,totalAyah,audio,const DeepCollectionEquality().hash(_english),const DeepCollectionEquality().hash(_arabic1));

@override
String toString() {
  return 'SurahModelWithAudio(surahName: $surahName, surahNameArabicLong: $surahNameArabicLong, revelationPlace: $revelationPlace, totalAyah: $totalAyah, audio: $audio, english: $english, arabic1: $arabic1)';
}


}

/// @nodoc
abstract mixin class _$SurahModelWithAudioCopyWith<$Res> implements $SurahModelWithAudioCopyWith<$Res> {
  factory _$SurahModelWithAudioCopyWith(_SurahModelWithAudio value, $Res Function(_SurahModelWithAudio) _then) = __$SurahModelWithAudioCopyWithImpl;
@override @useResult
$Res call({
 String surahName, String surahNameArabicLong, RevelationPlace revelationPlace, int totalAyah, AudioModel audio, List<String> english, List<String> arabic1
});


@override $AudioModelCopyWith<$Res> get audio;

}
/// @nodoc
class __$SurahModelWithAudioCopyWithImpl<$Res>
    implements _$SurahModelWithAudioCopyWith<$Res> {
  __$SurahModelWithAudioCopyWithImpl(this._self, this._then);

  final _SurahModelWithAudio _self;
  final $Res Function(_SurahModelWithAudio) _then;

/// Create a copy of SurahModelWithAudio
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? surahName = null,Object? surahNameArabicLong = null,Object? revelationPlace = null,Object? totalAyah = null,Object? audio = null,Object? english = null,Object? arabic1 = null,}) {
  return _then(_SurahModelWithAudio(
surahName: null == surahName ? _self.surahName : surahName // ignore: cast_nullable_to_non_nullable
as String,surahNameArabicLong: null == surahNameArabicLong ? _self.surahNameArabicLong : surahNameArabicLong // ignore: cast_nullable_to_non_nullable
as String,revelationPlace: null == revelationPlace ? _self.revelationPlace : revelationPlace // ignore: cast_nullable_to_non_nullable
as RevelationPlace,totalAyah: null == totalAyah ? _self.totalAyah : totalAyah // ignore: cast_nullable_to_non_nullable
as int,audio: null == audio ? _self.audio : audio // ignore: cast_nullable_to_non_nullable
as AudioModel,english: null == english ? _self._english : english // ignore: cast_nullable_to_non_nullable
as List<String>,arabic1: null == arabic1 ? _self._arabic1 : arabic1 // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of SurahModelWithAudio
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AudioModelCopyWith<$Res> get audio {
  
  return $AudioModelCopyWith<$Res>(_self.audio, (value) {
    return _then(_self.copyWith(audio: value));
  });
}
}

// dart format on
