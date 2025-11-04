// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_metadata_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SurahMetadataModel {

 int get id; String get name; String get transliteration; Type get type; int get totalVerses;
/// Create a copy of SurahMetadataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SurahMetadataModelCopyWith<SurahMetadataModel> get copyWith => _$SurahMetadataModelCopyWithImpl<SurahMetadataModel>(this as SurahMetadataModel, _$identity);

  /// Serializes this SurahMetadataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurahMetadataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.transliteration, transliteration) || other.transliteration == transliteration)&&(identical(other.type, type) || other.type == type)&&(identical(other.totalVerses, totalVerses) || other.totalVerses == totalVerses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,transliteration,type,totalVerses);

@override
String toString() {
  return 'SurahMetadataModel(id: $id, name: $name, transliteration: $transliteration, type: $type, totalVerses: $totalVerses)';
}


}

/// @nodoc
abstract mixin class $SurahMetadataModelCopyWith<$Res>  {
  factory $SurahMetadataModelCopyWith(SurahMetadataModel value, $Res Function(SurahMetadataModel) _then) = _$SurahMetadataModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String transliteration, Type type, int totalVerses
});




}
/// @nodoc
class _$SurahMetadataModelCopyWithImpl<$Res>
    implements $SurahMetadataModelCopyWith<$Res> {
  _$SurahMetadataModelCopyWithImpl(this._self, this._then);

  final SurahMetadataModel _self;
  final $Res Function(SurahMetadataModel) _then;

/// Create a copy of SurahMetadataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? transliteration = null,Object? type = null,Object? totalVerses = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,transliteration: null == transliteration ? _self.transliteration : transliteration // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as Type,totalVerses: null == totalVerses ? _self.totalVerses : totalVerses // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SurahMetadataModel].
extension SurahMetadataModelPatterns on SurahMetadataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SurahMetadataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SurahMetadataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SurahMetadataModel value)  $default,){
final _that = this;
switch (_that) {
case _SurahMetadataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SurahMetadataModel value)?  $default,){
final _that = this;
switch (_that) {
case _SurahMetadataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String transliteration,  Type type,  int totalVerses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SurahMetadataModel() when $default != null:
return $default(_that.id,_that.name,_that.transliteration,_that.type,_that.totalVerses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String transliteration,  Type type,  int totalVerses)  $default,) {final _that = this;
switch (_that) {
case _SurahMetadataModel():
return $default(_that.id,_that.name,_that.transliteration,_that.type,_that.totalVerses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String transliteration,  Type type,  int totalVerses)?  $default,) {final _that = this;
switch (_that) {
case _SurahMetadataModel() when $default != null:
return $default(_that.id,_that.name,_that.transliteration,_that.type,_that.totalVerses);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SurahMetadataModel implements SurahMetadataModel {
  const _SurahMetadataModel({required this.id, required this.name, required this.transliteration, required this.type, required this.totalVerses});
  factory _SurahMetadataModel.fromJson(Map<String, dynamic> json) => _$SurahMetadataModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String transliteration;
@override final  Type type;
@override final  int totalVerses;

/// Create a copy of SurahMetadataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SurahMetadataModelCopyWith<_SurahMetadataModel> get copyWith => __$SurahMetadataModelCopyWithImpl<_SurahMetadataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SurahMetadataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SurahMetadataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.transliteration, transliteration) || other.transliteration == transliteration)&&(identical(other.type, type) || other.type == type)&&(identical(other.totalVerses, totalVerses) || other.totalVerses == totalVerses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,transliteration,type,totalVerses);

@override
String toString() {
  return 'SurahMetadataModel(id: $id, name: $name, transliteration: $transliteration, type: $type, totalVerses: $totalVerses)';
}


}

/// @nodoc
abstract mixin class _$SurahMetadataModelCopyWith<$Res> implements $SurahMetadataModelCopyWith<$Res> {
  factory _$SurahMetadataModelCopyWith(_SurahMetadataModel value, $Res Function(_SurahMetadataModel) _then) = __$SurahMetadataModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String transliteration, Type type, int totalVerses
});




}
/// @nodoc
class __$SurahMetadataModelCopyWithImpl<$Res>
    implements _$SurahMetadataModelCopyWith<$Res> {
  __$SurahMetadataModelCopyWithImpl(this._self, this._then);

  final _SurahMetadataModel _self;
  final $Res Function(_SurahMetadataModel) _then;

/// Create a copy of SurahMetadataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? transliteration = null,Object? type = null,Object? totalVerses = null,}) {
  return _then(_SurahMetadataModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,transliteration: null == transliteration ? _self.transliteration : transliteration // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as Type,totalVerses: null == totalVerses ? _self.totalVerses : totalVerses // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
