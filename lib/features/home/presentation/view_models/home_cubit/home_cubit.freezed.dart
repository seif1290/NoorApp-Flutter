// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _GetQuranLoading value)?  getQuranLoading,TResult Function( _GetQuranSuccess value)?  getQuranSuccess,TResult Function( _GetQuranFailed value)?  getQuranfailed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _GetQuranLoading() when getQuranLoading != null:
return getQuranLoading(_that);case _GetQuranSuccess() when getQuranSuccess != null:
return getQuranSuccess(_that);case _GetQuranFailed() when getQuranfailed != null:
return getQuranfailed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _GetQuranLoading value)  getQuranLoading,required TResult Function( _GetQuranSuccess value)  getQuranSuccess,required TResult Function( _GetQuranFailed value)  getQuranfailed,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _GetQuranLoading():
return getQuranLoading(_that);case _GetQuranSuccess():
return getQuranSuccess(_that);case _GetQuranFailed():
return getQuranfailed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _GetQuranLoading value)?  getQuranLoading,TResult? Function( _GetQuranSuccess value)?  getQuranSuccess,TResult? Function( _GetQuranFailed value)?  getQuranfailed,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _GetQuranLoading() when getQuranLoading != null:
return getQuranLoading(_that);case _GetQuranSuccess() when getQuranSuccess != null:
return getQuranSuccess(_that);case _GetQuranFailed() when getQuranfailed != null:
return getQuranfailed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  getQuranLoading,TResult Function( List<SurahModel> surahs)?  getQuranSuccess,TResult Function( String errMsg)?  getQuranfailed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _GetQuranLoading() when getQuranLoading != null:
return getQuranLoading();case _GetQuranSuccess() when getQuranSuccess != null:
return getQuranSuccess(_that.surahs);case _GetQuranFailed() when getQuranfailed != null:
return getQuranfailed(_that.errMsg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  getQuranLoading,required TResult Function( List<SurahModel> surahs)  getQuranSuccess,required TResult Function( String errMsg)  getQuranfailed,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _GetQuranLoading():
return getQuranLoading();case _GetQuranSuccess():
return getQuranSuccess(_that.surahs);case _GetQuranFailed():
return getQuranfailed(_that.errMsg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  getQuranLoading,TResult? Function( List<SurahModel> surahs)?  getQuranSuccess,TResult? Function( String errMsg)?  getQuranfailed,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _GetQuranLoading() when getQuranLoading != null:
return getQuranLoading();case _GetQuranSuccess() when getQuranSuccess != null:
return getQuranSuccess(_that.surahs);case _GetQuranFailed() when getQuranfailed != null:
return getQuranfailed(_that.errMsg);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class _GetQuranLoading implements HomeState {
  const _GetQuranLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetQuranLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.getQuranLoading()';
}


}




/// @nodoc


class _GetQuranSuccess implements HomeState {
  const _GetQuranSuccess({required final  List<SurahModel> surahs}): _surahs = surahs;
  

 final  List<SurahModel> _surahs;
 List<SurahModel> get surahs {
  if (_surahs is EqualUnmodifiableListView) return _surahs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_surahs);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetQuranSuccessCopyWith<_GetQuranSuccess> get copyWith => __$GetQuranSuccessCopyWithImpl<_GetQuranSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetQuranSuccess&&const DeepCollectionEquality().equals(other._surahs, _surahs));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_surahs));

@override
String toString() {
  return 'HomeState.getQuranSuccess(surahs: $surahs)';
}


}

/// @nodoc
abstract mixin class _$GetQuranSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$GetQuranSuccessCopyWith(_GetQuranSuccess value, $Res Function(_GetQuranSuccess) _then) = __$GetQuranSuccessCopyWithImpl;
@useResult
$Res call({
 List<SurahModel> surahs
});




}
/// @nodoc
class __$GetQuranSuccessCopyWithImpl<$Res>
    implements _$GetQuranSuccessCopyWith<$Res> {
  __$GetQuranSuccessCopyWithImpl(this._self, this._then);

  final _GetQuranSuccess _self;
  final $Res Function(_GetQuranSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? surahs = null,}) {
  return _then(_GetQuranSuccess(
surahs: null == surahs ? _self._surahs : surahs // ignore: cast_nullable_to_non_nullable
as List<SurahModel>,
  ));
}


}

/// @nodoc


class _GetQuranFailed implements HomeState {
  const _GetQuranFailed({required this.errMsg});
  

 final  String errMsg;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetQuranFailedCopyWith<_GetQuranFailed> get copyWith => __$GetQuranFailedCopyWithImpl<_GetQuranFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetQuranFailed&&(identical(other.errMsg, errMsg) || other.errMsg == errMsg));
}


@override
int get hashCode => Object.hash(runtimeType,errMsg);

@override
String toString() {
  return 'HomeState.getQuranfailed(errMsg: $errMsg)';
}


}

/// @nodoc
abstract mixin class _$GetQuranFailedCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$GetQuranFailedCopyWith(_GetQuranFailed value, $Res Function(_GetQuranFailed) _then) = __$GetQuranFailedCopyWithImpl;
@useResult
$Res call({
 String errMsg
});




}
/// @nodoc
class __$GetQuranFailedCopyWithImpl<$Res>
    implements _$GetQuranFailedCopyWith<$Res> {
  __$GetQuranFailedCopyWithImpl(this._self, this._then);

  final _GetQuranFailed _self;
  final $Res Function(_GetQuranFailed) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errMsg = null,}) {
  return _then(_GetQuranFailed(
errMsg: null == errMsg ? _self.errMsg : errMsg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
