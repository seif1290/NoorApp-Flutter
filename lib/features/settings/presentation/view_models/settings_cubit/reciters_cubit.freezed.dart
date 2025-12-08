// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reciters_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RecitersState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecitersState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RecitersState()';
}


}

/// @nodoc
class $RecitersStateCopyWith<$Res>  {
$RecitersStateCopyWith(RecitersState _, $Res Function(RecitersState) __);
}


/// Adds pattern-matching-related methods to [RecitersState].
extension RecitersStatePatterns on RecitersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _GetRecitersSuccess value)?  getRecitersSuccess,TResult Function( _GetRecitersFailed value)?  getRecitersFailed,TResult Function( _ReciterSelected value)?  reciterSelected,TResult Function( _ReciterLoaded value)?  reciterLoaded,TResult Function( _ReciterFailed value)?  reciterFailed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _GetRecitersSuccess() when getRecitersSuccess != null:
return getRecitersSuccess(_that);case _GetRecitersFailed() when getRecitersFailed != null:
return getRecitersFailed(_that);case _ReciterSelected() when reciterSelected != null:
return reciterSelected(_that);case _ReciterLoaded() when reciterLoaded != null:
return reciterLoaded(_that);case _ReciterFailed() when reciterFailed != null:
return reciterFailed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _GetRecitersSuccess value)  getRecitersSuccess,required TResult Function( _GetRecitersFailed value)  getRecitersFailed,required TResult Function( _ReciterSelected value)  reciterSelected,required TResult Function( _ReciterLoaded value)  reciterLoaded,required TResult Function( _ReciterFailed value)  reciterFailed,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _GetRecitersSuccess():
return getRecitersSuccess(_that);case _GetRecitersFailed():
return getRecitersFailed(_that);case _ReciterSelected():
return reciterSelected(_that);case _ReciterLoaded():
return reciterLoaded(_that);case _ReciterFailed():
return reciterFailed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _GetRecitersSuccess value)?  getRecitersSuccess,TResult? Function( _GetRecitersFailed value)?  getRecitersFailed,TResult? Function( _ReciterSelected value)?  reciterSelected,TResult? Function( _ReciterLoaded value)?  reciterLoaded,TResult? Function( _ReciterFailed value)?  reciterFailed,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _GetRecitersSuccess() when getRecitersSuccess != null:
return getRecitersSuccess(_that);case _GetRecitersFailed() when getRecitersFailed != null:
return getRecitersFailed(_that);case _ReciterSelected() when reciterSelected != null:
return reciterSelected(_that);case _ReciterLoaded() when reciterLoaded != null:
return reciterLoaded(_that);case _ReciterFailed() when reciterFailed != null:
return reciterFailed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  getRecitersSuccess,TResult Function( Failure failure)?  getRecitersFailed,TResult Function()?  reciterSelected,TResult Function()?  reciterLoaded,TResult Function( Failure failure)?  reciterFailed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _GetRecitersSuccess() when getRecitersSuccess != null:
return getRecitersSuccess();case _GetRecitersFailed() when getRecitersFailed != null:
return getRecitersFailed(_that.failure);case _ReciterSelected() when reciterSelected != null:
return reciterSelected();case _ReciterLoaded() when reciterLoaded != null:
return reciterLoaded();case _ReciterFailed() when reciterFailed != null:
return reciterFailed(_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  getRecitersSuccess,required TResult Function( Failure failure)  getRecitersFailed,required TResult Function()  reciterSelected,required TResult Function()  reciterLoaded,required TResult Function( Failure failure)  reciterFailed,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _GetRecitersSuccess():
return getRecitersSuccess();case _GetRecitersFailed():
return getRecitersFailed(_that.failure);case _ReciterSelected():
return reciterSelected();case _ReciterLoaded():
return reciterLoaded();case _ReciterFailed():
return reciterFailed(_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  getRecitersSuccess,TResult? Function( Failure failure)?  getRecitersFailed,TResult? Function()?  reciterSelected,TResult? Function()?  reciterLoaded,TResult? Function( Failure failure)?  reciterFailed,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _GetRecitersSuccess() when getRecitersSuccess != null:
return getRecitersSuccess();case _GetRecitersFailed() when getRecitersFailed != null:
return getRecitersFailed(_that.failure);case _ReciterSelected() when reciterSelected != null:
return reciterSelected();case _ReciterLoaded() when reciterLoaded != null:
return reciterLoaded();case _ReciterFailed() when reciterFailed != null:
return reciterFailed(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements RecitersState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RecitersState.initial()';
}


}




/// @nodoc


class _GetRecitersSuccess implements RecitersState {
  const _GetRecitersSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetRecitersSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RecitersState.getRecitersSuccess()';
}


}




/// @nodoc


class _GetRecitersFailed implements RecitersState {
  const _GetRecitersFailed(this.failure);
  

 final  Failure failure;

/// Create a copy of RecitersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetRecitersFailedCopyWith<_GetRecitersFailed> get copyWith => __$GetRecitersFailedCopyWithImpl<_GetRecitersFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetRecitersFailed&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'RecitersState.getRecitersFailed(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$GetRecitersFailedCopyWith<$Res> implements $RecitersStateCopyWith<$Res> {
  factory _$GetRecitersFailedCopyWith(_GetRecitersFailed value, $Res Function(_GetRecitersFailed) _then) = __$GetRecitersFailedCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class __$GetRecitersFailedCopyWithImpl<$Res>
    implements _$GetRecitersFailedCopyWith<$Res> {
  __$GetRecitersFailedCopyWithImpl(this._self, this._then);

  final _GetRecitersFailed _self;
  final $Res Function(_GetRecitersFailed) _then;

/// Create a copy of RecitersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_GetRecitersFailed(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

/// @nodoc


class _ReciterSelected implements RecitersState {
  const _ReciterSelected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReciterSelected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RecitersState.reciterSelected()';
}


}




/// @nodoc


class _ReciterLoaded implements RecitersState {
  const _ReciterLoaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReciterLoaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RecitersState.reciterLoaded()';
}


}




/// @nodoc


class _ReciterFailed implements RecitersState {
  const _ReciterFailed(this.failure);
  

 final  Failure failure;

/// Create a copy of RecitersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReciterFailedCopyWith<_ReciterFailed> get copyWith => __$ReciterFailedCopyWithImpl<_ReciterFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReciterFailed&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'RecitersState.reciterFailed(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$ReciterFailedCopyWith<$Res> implements $RecitersStateCopyWith<$Res> {
  factory _$ReciterFailedCopyWith(_ReciterFailed value, $Res Function(_ReciterFailed) _then) = __$ReciterFailedCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class __$ReciterFailedCopyWithImpl<$Res>
    implements _$ReciterFailedCopyWith<$Res> {
  __$ReciterFailedCopyWithImpl(this._self, this._then);

  final _ReciterFailed _self;
  final $Res Function(_ReciterFailed) _then;

/// Create a copy of RecitersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_ReciterFailed(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

// dart format on
