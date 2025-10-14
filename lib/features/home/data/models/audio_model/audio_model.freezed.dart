// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AudioModel {

 String get reciter; String get originalUrl;
/// Create a copy of AudioModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AudioModelCopyWith<AudioModel> get copyWith => _$AudioModelCopyWithImpl<AudioModel>(this as AudioModel, _$identity);

  /// Serializes this AudioModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AudioModel&&(identical(other.reciter, reciter) || other.reciter == reciter)&&(identical(other.originalUrl, originalUrl) || other.originalUrl == originalUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reciter,originalUrl);

@override
String toString() {
  return 'AudioModel(reciter: $reciter, originalUrl: $originalUrl)';
}


}

/// @nodoc
abstract mixin class $AudioModelCopyWith<$Res>  {
  factory $AudioModelCopyWith(AudioModel value, $Res Function(AudioModel) _then) = _$AudioModelCopyWithImpl;
@useResult
$Res call({
 String reciter, String originalUrl
});




}
/// @nodoc
class _$AudioModelCopyWithImpl<$Res>
    implements $AudioModelCopyWith<$Res> {
  _$AudioModelCopyWithImpl(this._self, this._then);

  final AudioModel _self;
  final $Res Function(AudioModel) _then;

/// Create a copy of AudioModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reciter = null,Object? originalUrl = null,}) {
  return _then(_self.copyWith(
reciter: null == reciter ? _self.reciter : reciter // ignore: cast_nullable_to_non_nullable
as String,originalUrl: null == originalUrl ? _self.originalUrl : originalUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AudioModel].
extension AudioModelPatterns on AudioModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AudioModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AudioModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AudioModel value)  $default,){
final _that = this;
switch (_that) {
case _AudioModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AudioModel value)?  $default,){
final _that = this;
switch (_that) {
case _AudioModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String reciter,  String originalUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AudioModel() when $default != null:
return $default(_that.reciter,_that.originalUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String reciter,  String originalUrl)  $default,) {final _that = this;
switch (_that) {
case _AudioModel():
return $default(_that.reciter,_that.originalUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String reciter,  String originalUrl)?  $default,) {final _that = this;
switch (_that) {
case _AudioModel() when $default != null:
return $default(_that.reciter,_that.originalUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AudioModel implements AudioModel {
  const _AudioModel({required this.reciter, required this.originalUrl});
  factory _AudioModel.fromJson(Map<String, dynamic> json) => _$AudioModelFromJson(json);

@override final  String reciter;
@override final  String originalUrl;

/// Create a copy of AudioModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AudioModelCopyWith<_AudioModel> get copyWith => __$AudioModelCopyWithImpl<_AudioModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AudioModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AudioModel&&(identical(other.reciter, reciter) || other.reciter == reciter)&&(identical(other.originalUrl, originalUrl) || other.originalUrl == originalUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reciter,originalUrl);

@override
String toString() {
  return 'AudioModel(reciter: $reciter, originalUrl: $originalUrl)';
}


}

/// @nodoc
abstract mixin class _$AudioModelCopyWith<$Res> implements $AudioModelCopyWith<$Res> {
  factory _$AudioModelCopyWith(_AudioModel value, $Res Function(_AudioModel) _then) = __$AudioModelCopyWithImpl;
@override @useResult
$Res call({
 String reciter, String originalUrl
});




}
/// @nodoc
class __$AudioModelCopyWithImpl<$Res>
    implements _$AudioModelCopyWith<$Res> {
  __$AudioModelCopyWithImpl(this._self, this._then);

  final _AudioModel _self;
  final $Res Function(_AudioModel) _then;

/// Create a copy of AudioModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reciter = null,Object? originalUrl = null,}) {
  return _then(_AudioModel(
reciter: null == reciter ? _self.reciter : reciter // ignore: cast_nullable_to_non_nullable
as String,originalUrl: null == originalUrl ? _self.originalUrl : originalUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
