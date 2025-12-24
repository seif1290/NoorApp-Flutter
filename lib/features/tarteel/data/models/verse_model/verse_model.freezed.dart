// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verse_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerseModel {

 int get id; String get text; String get translation;
/// Create a copy of VerseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerseModelCopyWith<VerseModel> get copyWith => _$VerseModelCopyWithImpl<VerseModel>(this as VerseModel, _$identity);

  /// Serializes this VerseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&(identical(other.translation, translation) || other.translation == translation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,text,translation);

@override
String toString() {
  return 'VerseModel(id: $id, text: $text, translation: $translation)';
}


}

/// @nodoc
abstract mixin class $VerseModelCopyWith<$Res>  {
  factory $VerseModelCopyWith(VerseModel value, $Res Function(VerseModel) _then) = _$VerseModelCopyWithImpl;
@useResult
$Res call({
 int id, String text, String translation
});




}
/// @nodoc
class _$VerseModelCopyWithImpl<$Res>
    implements $VerseModelCopyWith<$Res> {
  _$VerseModelCopyWithImpl(this._self, this._then);

  final VerseModel _self;
  final $Res Function(VerseModel) _then;

/// Create a copy of VerseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? text = null,Object? translation = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,translation: null == translation ? _self.translation : translation // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VerseModel].
extension VerseModelPatterns on VerseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerseModel value)  $default,){
final _that = this;
switch (_that) {
case _VerseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerseModel value)?  $default,){
final _that = this;
switch (_that) {
case _VerseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String text,  String translation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerseModel() when $default != null:
return $default(_that.id,_that.text,_that.translation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String text,  String translation)  $default,) {final _that = this;
switch (_that) {
case _VerseModel():
return $default(_that.id,_that.text,_that.translation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String text,  String translation)?  $default,) {final _that = this;
switch (_that) {
case _VerseModel() when $default != null:
return $default(_that.id,_that.text,_that.translation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerseModel implements VerseModel {
  const _VerseModel({required this.id, required this.text, required this.translation});
  factory _VerseModel.fromJson(Map<String, dynamic> json) => _$VerseModelFromJson(json);

@override final  int id;
@override final  String text;
@override final  String translation;

/// Create a copy of VerseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerseModelCopyWith<_VerseModel> get copyWith => __$VerseModelCopyWithImpl<_VerseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&(identical(other.translation, translation) || other.translation == translation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,text,translation);

@override
String toString() {
  return 'VerseModel(id: $id, text: $text, translation: $translation)';
}


}

/// @nodoc
abstract mixin class _$VerseModelCopyWith<$Res> implements $VerseModelCopyWith<$Res> {
  factory _$VerseModelCopyWith(_VerseModel value, $Res Function(_VerseModel) _then) = __$VerseModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String text, String translation
});




}
/// @nodoc
class __$VerseModelCopyWithImpl<$Res>
    implements _$VerseModelCopyWith<$Res> {
  __$VerseModelCopyWithImpl(this._self, this._then);

  final _VerseModel _self;
  final $Res Function(_VerseModel) _then;

/// Create a copy of VerseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? text = null,Object? translation = null,}) {
  return _then(_VerseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,translation: null == translation ? _self.translation : translation // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
