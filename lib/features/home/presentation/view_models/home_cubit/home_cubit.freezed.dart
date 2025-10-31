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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _GetQuranLoading value)?  getQuranLoading,TResult Function( _GetQuranSuccess value)?  getQuranSuccess,TResult Function( _GetQuranFailed value)?  getQuranfailed,TResult Function( _GetSurahLoading value)?  getSurahLoading,TResult Function( _GetSurahSuccess value)?  getSurahSuccess,TResult Function( _GetSurahFailed value)?  getSurahFailed,TResult Function( _SurahDetailsOpened value)?  surahDetailsOpened,TResult Function( _SurahDetailsClosed value)?  surahDetailsClosed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _GetQuranLoading() when getQuranLoading != null:
return getQuranLoading(_that);case _GetQuranSuccess() when getQuranSuccess != null:
return getQuranSuccess(_that);case _GetQuranFailed() when getQuranfailed != null:
return getQuranfailed(_that);case _GetSurahLoading() when getSurahLoading != null:
return getSurahLoading(_that);case _GetSurahSuccess() when getSurahSuccess != null:
return getSurahSuccess(_that);case _GetSurahFailed() when getSurahFailed != null:
return getSurahFailed(_that);case _SurahDetailsOpened() when surahDetailsOpened != null:
return surahDetailsOpened(_that);case _SurahDetailsClosed() when surahDetailsClosed != null:
return surahDetailsClosed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _GetQuranLoading value)  getQuranLoading,required TResult Function( _GetQuranSuccess value)  getQuranSuccess,required TResult Function( _GetQuranFailed value)  getQuranfailed,required TResult Function( _GetSurahLoading value)  getSurahLoading,required TResult Function( _GetSurahSuccess value)  getSurahSuccess,required TResult Function( _GetSurahFailed value)  getSurahFailed,required TResult Function( _SurahDetailsOpened value)  surahDetailsOpened,required TResult Function( _SurahDetailsClosed value)  surahDetailsClosed,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _GetQuranLoading():
return getQuranLoading(_that);case _GetQuranSuccess():
return getQuranSuccess(_that);case _GetQuranFailed():
return getQuranfailed(_that);case _GetSurahLoading():
return getSurahLoading(_that);case _GetSurahSuccess():
return getSurahSuccess(_that);case _GetSurahFailed():
return getSurahFailed(_that);case _SurahDetailsOpened():
return surahDetailsOpened(_that);case _SurahDetailsClosed():
return surahDetailsClosed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _GetQuranLoading value)?  getQuranLoading,TResult? Function( _GetQuranSuccess value)?  getQuranSuccess,TResult? Function( _GetQuranFailed value)?  getQuranfailed,TResult? Function( _GetSurahLoading value)?  getSurahLoading,TResult? Function( _GetSurahSuccess value)?  getSurahSuccess,TResult? Function( _GetSurahFailed value)?  getSurahFailed,TResult? Function( _SurahDetailsOpened value)?  surahDetailsOpened,TResult? Function( _SurahDetailsClosed value)?  surahDetailsClosed,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _GetQuranLoading() when getQuranLoading != null:
return getQuranLoading(_that);case _GetQuranSuccess() when getQuranSuccess != null:
return getQuranSuccess(_that);case _GetQuranFailed() when getQuranfailed != null:
return getQuranfailed(_that);case _GetSurahLoading() when getSurahLoading != null:
return getSurahLoading(_that);case _GetSurahSuccess() when getSurahSuccess != null:
return getSurahSuccess(_that);case _GetSurahFailed() when getSurahFailed != null:
return getSurahFailed(_that);case _SurahDetailsOpened() when surahDetailsOpened != null:
return surahDetailsOpened(_that);case _SurahDetailsClosed() when surahDetailsClosed != null:
return surahDetailsClosed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  getQuranLoading,TResult Function( List<SurahModel> surahs)?  getQuranSuccess,TResult Function( Failure failure)?  getQuranfailed,TResult Function()?  getSurahLoading,TResult Function( SurahModelWithAudio surah,  int surahNumber)?  getSurahSuccess,TResult Function( Failure failure)?  getSurahFailed,TResult Function()?  surahDetailsOpened,TResult Function()?  surahDetailsClosed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _GetQuranLoading() when getQuranLoading != null:
return getQuranLoading();case _GetQuranSuccess() when getQuranSuccess != null:
return getQuranSuccess(_that.surahs);case _GetQuranFailed() when getQuranfailed != null:
return getQuranfailed(_that.failure);case _GetSurahLoading() when getSurahLoading != null:
return getSurahLoading();case _GetSurahSuccess() when getSurahSuccess != null:
return getSurahSuccess(_that.surah,_that.surahNumber);case _GetSurahFailed() when getSurahFailed != null:
return getSurahFailed(_that.failure);case _SurahDetailsOpened() when surahDetailsOpened != null:
return surahDetailsOpened();case _SurahDetailsClosed() when surahDetailsClosed != null:
return surahDetailsClosed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  getQuranLoading,required TResult Function( List<SurahModel> surahs)  getQuranSuccess,required TResult Function( Failure failure)  getQuranfailed,required TResult Function()  getSurahLoading,required TResult Function( SurahModelWithAudio surah,  int surahNumber)  getSurahSuccess,required TResult Function( Failure failure)  getSurahFailed,required TResult Function()  surahDetailsOpened,required TResult Function()  surahDetailsClosed,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _GetQuranLoading():
return getQuranLoading();case _GetQuranSuccess():
return getQuranSuccess(_that.surahs);case _GetQuranFailed():
return getQuranfailed(_that.failure);case _GetSurahLoading():
return getSurahLoading();case _GetSurahSuccess():
return getSurahSuccess(_that.surah,_that.surahNumber);case _GetSurahFailed():
return getSurahFailed(_that.failure);case _SurahDetailsOpened():
return surahDetailsOpened();case _SurahDetailsClosed():
return surahDetailsClosed();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  getQuranLoading,TResult? Function( List<SurahModel> surahs)?  getQuranSuccess,TResult? Function( Failure failure)?  getQuranfailed,TResult? Function()?  getSurahLoading,TResult? Function( SurahModelWithAudio surah,  int surahNumber)?  getSurahSuccess,TResult? Function( Failure failure)?  getSurahFailed,TResult? Function()?  surahDetailsOpened,TResult? Function()?  surahDetailsClosed,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _GetQuranLoading() when getQuranLoading != null:
return getQuranLoading();case _GetQuranSuccess() when getQuranSuccess != null:
return getQuranSuccess(_that.surahs);case _GetQuranFailed() when getQuranfailed != null:
return getQuranfailed(_that.failure);case _GetSurahLoading() when getSurahLoading != null:
return getSurahLoading();case _GetSurahSuccess() when getSurahSuccess != null:
return getSurahSuccess(_that.surah,_that.surahNumber);case _GetSurahFailed() when getSurahFailed != null:
return getSurahFailed(_that.failure);case _SurahDetailsOpened() when surahDetailsOpened != null:
return surahDetailsOpened();case _SurahDetailsClosed() when surahDetailsClosed != null:
return surahDetailsClosed();case _:
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
  const _GetQuranFailed({required this.failure});
  

 final  Failure failure;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetQuranFailedCopyWith<_GetQuranFailed> get copyWith => __$GetQuranFailedCopyWithImpl<_GetQuranFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetQuranFailed&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'HomeState.getQuranfailed(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$GetQuranFailedCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$GetQuranFailedCopyWith(_GetQuranFailed value, $Res Function(_GetQuranFailed) _then) = __$GetQuranFailedCopyWithImpl;
@useResult
$Res call({
 Failure failure
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
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_GetQuranFailed(
failure: null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

/// @nodoc


class _GetSurahLoading implements HomeState {
  const _GetSurahLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSurahLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.getSurahLoading()';
}


}




/// @nodoc


class _GetSurahSuccess implements HomeState {
  const _GetSurahSuccess({required this.surah, required this.surahNumber});
  

 final  SurahModelWithAudio surah;
 final  int surahNumber;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSurahSuccessCopyWith<_GetSurahSuccess> get copyWith => __$GetSurahSuccessCopyWithImpl<_GetSurahSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSurahSuccess&&(identical(other.surah, surah) || other.surah == surah)&&(identical(other.surahNumber, surahNumber) || other.surahNumber == surahNumber));
}


@override
int get hashCode => Object.hash(runtimeType,surah,surahNumber);

@override
String toString() {
  return 'HomeState.getSurahSuccess(surah: $surah, surahNumber: $surahNumber)';
}


}

/// @nodoc
abstract mixin class _$GetSurahSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$GetSurahSuccessCopyWith(_GetSurahSuccess value, $Res Function(_GetSurahSuccess) _then) = __$GetSurahSuccessCopyWithImpl;
@useResult
$Res call({
 SurahModelWithAudio surah, int surahNumber
});


$SurahModelWithAudioCopyWith<$Res> get surah;

}
/// @nodoc
class __$GetSurahSuccessCopyWithImpl<$Res>
    implements _$GetSurahSuccessCopyWith<$Res> {
  __$GetSurahSuccessCopyWithImpl(this._self, this._then);

  final _GetSurahSuccess _self;
  final $Res Function(_GetSurahSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? surah = null,Object? surahNumber = null,}) {
  return _then(_GetSurahSuccess(
surah: null == surah ? _self.surah : surah // ignore: cast_nullable_to_non_nullable
as SurahModelWithAudio,surahNumber: null == surahNumber ? _self.surahNumber : surahNumber // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SurahModelWithAudioCopyWith<$Res> get surah {
  
  return $SurahModelWithAudioCopyWith<$Res>(_self.surah, (value) {
    return _then(_self.copyWith(surah: value));
  });
}
}

/// @nodoc


class _GetSurahFailed implements HomeState {
  const _GetSurahFailed({required this.failure});
  

 final  Failure failure;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSurahFailedCopyWith<_GetSurahFailed> get copyWith => __$GetSurahFailedCopyWithImpl<_GetSurahFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSurahFailed&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'HomeState.getSurahFailed(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$GetSurahFailedCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$GetSurahFailedCopyWith(_GetSurahFailed value, $Res Function(_GetSurahFailed) _then) = __$GetSurahFailedCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class __$GetSurahFailedCopyWithImpl<$Res>
    implements _$GetSurahFailedCopyWith<$Res> {
  __$GetSurahFailedCopyWithImpl(this._self, this._then);

  final _GetSurahFailed _self;
  final $Res Function(_GetSurahFailed) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_GetSurahFailed(
failure: null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

/// @nodoc


class _SurahDetailsOpened implements HomeState {
  const _SurahDetailsOpened();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SurahDetailsOpened);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.surahDetailsOpened()';
}


}




/// @nodoc


class _SurahDetailsClosed implements HomeState {
  const _SurahDetailsClosed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SurahDetailsClosed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.surahDetailsClosed()';
}


}




// dart format on
