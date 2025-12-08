// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_player_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AudioPlayerState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AudioPlayerState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AudioPlayerState()';
}


}

/// @nodoc
class $AudioPlayerStateCopyWith<$Res>  {
$AudioPlayerStateCopyWith(AudioPlayerState _, $Res Function(AudioPlayerState) __);
}


/// Adds pattern-matching-related methods to [AudioPlayerState].
extension AudioPlayerStatePatterns on AudioPlayerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _SurahDetailsLoading value)?  getSurahLoading,TResult Function( _SurahDetailsSuccess value)?  getSurahSuccess,TResult Function( _GetSurahFailedfailed value)?  getSurahFailed,TResult Function( _AudioPlaying value)?  audioPlaying,TResult Function( _AudioFinished value)?  audioFinished,TResult Function( _AudioPaused value)?  audioPaused,TResult Function( _AudioProgressUpdated value)?  audioProgressUpdated,TResult Function( _ReciterLoaded value)?  reciterLoaded,TResult Function( _SurahDetailsOpened value)?  surahDetailsOpened,TResult Function( _SurahDetailsClosed value)?  surahDetailsClosed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _SurahDetailsLoading() when getSurahLoading != null:
return getSurahLoading(_that);case _SurahDetailsSuccess() when getSurahSuccess != null:
return getSurahSuccess(_that);case _GetSurahFailedfailed() when getSurahFailed != null:
return getSurahFailed(_that);case _AudioPlaying() when audioPlaying != null:
return audioPlaying(_that);case _AudioFinished() when audioFinished != null:
return audioFinished(_that);case _AudioPaused() when audioPaused != null:
return audioPaused(_that);case _AudioProgressUpdated() when audioProgressUpdated != null:
return audioProgressUpdated(_that);case _ReciterLoaded() when reciterLoaded != null:
return reciterLoaded(_that);case _SurahDetailsOpened() when surahDetailsOpened != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _SurahDetailsLoading value)  getSurahLoading,required TResult Function( _SurahDetailsSuccess value)  getSurahSuccess,required TResult Function( _GetSurahFailedfailed value)  getSurahFailed,required TResult Function( _AudioPlaying value)  audioPlaying,required TResult Function( _AudioFinished value)  audioFinished,required TResult Function( _AudioPaused value)  audioPaused,required TResult Function( _AudioProgressUpdated value)  audioProgressUpdated,required TResult Function( _ReciterLoaded value)  reciterLoaded,required TResult Function( _SurahDetailsOpened value)  surahDetailsOpened,required TResult Function( _SurahDetailsClosed value)  surahDetailsClosed,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _SurahDetailsLoading():
return getSurahLoading(_that);case _SurahDetailsSuccess():
return getSurahSuccess(_that);case _GetSurahFailedfailed():
return getSurahFailed(_that);case _AudioPlaying():
return audioPlaying(_that);case _AudioFinished():
return audioFinished(_that);case _AudioPaused():
return audioPaused(_that);case _AudioProgressUpdated():
return audioProgressUpdated(_that);case _ReciterLoaded():
return reciterLoaded(_that);case _SurahDetailsOpened():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _SurahDetailsLoading value)?  getSurahLoading,TResult? Function( _SurahDetailsSuccess value)?  getSurahSuccess,TResult? Function( _GetSurahFailedfailed value)?  getSurahFailed,TResult? Function( _AudioPlaying value)?  audioPlaying,TResult? Function( _AudioFinished value)?  audioFinished,TResult? Function( _AudioPaused value)?  audioPaused,TResult? Function( _AudioProgressUpdated value)?  audioProgressUpdated,TResult? Function( _ReciterLoaded value)?  reciterLoaded,TResult? Function( _SurahDetailsOpened value)?  surahDetailsOpened,TResult? Function( _SurahDetailsClosed value)?  surahDetailsClosed,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _SurahDetailsLoading() when getSurahLoading != null:
return getSurahLoading(_that);case _SurahDetailsSuccess() when getSurahSuccess != null:
return getSurahSuccess(_that);case _GetSurahFailedfailed() when getSurahFailed != null:
return getSurahFailed(_that);case _AudioPlaying() when audioPlaying != null:
return audioPlaying(_that);case _AudioFinished() when audioFinished != null:
return audioFinished(_that);case _AudioPaused() when audioPaused != null:
return audioPaused(_that);case _AudioProgressUpdated() when audioProgressUpdated != null:
return audioProgressUpdated(_that);case _ReciterLoaded() when reciterLoaded != null:
return reciterLoaded(_that);case _SurahDetailsOpened() when surahDetailsOpened != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  getSurahLoading,TResult Function( SurahModel surah)?  getSurahSuccess,TResult Function( Failure failure)?  getSurahFailed,TResult Function()?  audioPlaying,TResult Function()?  audioFinished,TResult Function()?  audioPaused,TResult Function( Duration position,  Duration duration)?  audioProgressUpdated,TResult Function( ReciterModel reciter)?  reciterLoaded,TResult Function()?  surahDetailsOpened,TResult Function()?  surahDetailsClosed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _SurahDetailsLoading() when getSurahLoading != null:
return getSurahLoading();case _SurahDetailsSuccess() when getSurahSuccess != null:
return getSurahSuccess(_that.surah);case _GetSurahFailedfailed() when getSurahFailed != null:
return getSurahFailed(_that.failure);case _AudioPlaying() when audioPlaying != null:
return audioPlaying();case _AudioFinished() when audioFinished != null:
return audioFinished();case _AudioPaused() when audioPaused != null:
return audioPaused();case _AudioProgressUpdated() when audioProgressUpdated != null:
return audioProgressUpdated(_that.position,_that.duration);case _ReciterLoaded() when reciterLoaded != null:
return reciterLoaded(_that.reciter);case _SurahDetailsOpened() when surahDetailsOpened != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  getSurahLoading,required TResult Function( SurahModel surah)  getSurahSuccess,required TResult Function( Failure failure)  getSurahFailed,required TResult Function()  audioPlaying,required TResult Function()  audioFinished,required TResult Function()  audioPaused,required TResult Function( Duration position,  Duration duration)  audioProgressUpdated,required TResult Function( ReciterModel reciter)  reciterLoaded,required TResult Function()  surahDetailsOpened,required TResult Function()  surahDetailsClosed,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _SurahDetailsLoading():
return getSurahLoading();case _SurahDetailsSuccess():
return getSurahSuccess(_that.surah);case _GetSurahFailedfailed():
return getSurahFailed(_that.failure);case _AudioPlaying():
return audioPlaying();case _AudioFinished():
return audioFinished();case _AudioPaused():
return audioPaused();case _AudioProgressUpdated():
return audioProgressUpdated(_that.position,_that.duration);case _ReciterLoaded():
return reciterLoaded(_that.reciter);case _SurahDetailsOpened():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  getSurahLoading,TResult? Function( SurahModel surah)?  getSurahSuccess,TResult? Function( Failure failure)?  getSurahFailed,TResult? Function()?  audioPlaying,TResult? Function()?  audioFinished,TResult? Function()?  audioPaused,TResult? Function( Duration position,  Duration duration)?  audioProgressUpdated,TResult? Function( ReciterModel reciter)?  reciterLoaded,TResult? Function()?  surahDetailsOpened,TResult? Function()?  surahDetailsClosed,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _SurahDetailsLoading() when getSurahLoading != null:
return getSurahLoading();case _SurahDetailsSuccess() when getSurahSuccess != null:
return getSurahSuccess(_that.surah);case _GetSurahFailedfailed() when getSurahFailed != null:
return getSurahFailed(_that.failure);case _AudioPlaying() when audioPlaying != null:
return audioPlaying();case _AudioFinished() when audioFinished != null:
return audioFinished();case _AudioPaused() when audioPaused != null:
return audioPaused();case _AudioProgressUpdated() when audioProgressUpdated != null:
return audioProgressUpdated(_that.position,_that.duration);case _ReciterLoaded() when reciterLoaded != null:
return reciterLoaded(_that.reciter);case _SurahDetailsOpened() when surahDetailsOpened != null:
return surahDetailsOpened();case _SurahDetailsClosed() when surahDetailsClosed != null:
return surahDetailsClosed();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AudioPlayerState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AudioPlayerState.initial()';
}


}




/// @nodoc


class _SurahDetailsLoading implements AudioPlayerState {
  const _SurahDetailsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SurahDetailsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AudioPlayerState.getSurahLoading()';
}


}




/// @nodoc


class _SurahDetailsSuccess implements AudioPlayerState {
  const _SurahDetailsSuccess({required this.surah});
  

 final  SurahModel surah;

/// Create a copy of AudioPlayerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SurahDetailsSuccessCopyWith<_SurahDetailsSuccess> get copyWith => __$SurahDetailsSuccessCopyWithImpl<_SurahDetailsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SurahDetailsSuccess&&(identical(other.surah, surah) || other.surah == surah));
}


@override
int get hashCode => Object.hash(runtimeType,surah);

@override
String toString() {
  return 'AudioPlayerState.getSurahSuccess(surah: $surah)';
}


}

/// @nodoc
abstract mixin class _$SurahDetailsSuccessCopyWith<$Res> implements $AudioPlayerStateCopyWith<$Res> {
  factory _$SurahDetailsSuccessCopyWith(_SurahDetailsSuccess value, $Res Function(_SurahDetailsSuccess) _then) = __$SurahDetailsSuccessCopyWithImpl;
@useResult
$Res call({
 SurahModel surah
});


$SurahModelCopyWith<$Res> get surah;

}
/// @nodoc
class __$SurahDetailsSuccessCopyWithImpl<$Res>
    implements _$SurahDetailsSuccessCopyWith<$Res> {
  __$SurahDetailsSuccessCopyWithImpl(this._self, this._then);

  final _SurahDetailsSuccess _self;
  final $Res Function(_SurahDetailsSuccess) _then;

/// Create a copy of AudioPlayerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? surah = null,}) {
  return _then(_SurahDetailsSuccess(
surah: null == surah ? _self.surah : surah // ignore: cast_nullable_to_non_nullable
as SurahModel,
  ));
}

/// Create a copy of AudioPlayerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SurahModelCopyWith<$Res> get surah {
  
  return $SurahModelCopyWith<$Res>(_self.surah, (value) {
    return _then(_self.copyWith(surah: value));
  });
}
}

/// @nodoc


class _GetSurahFailedfailed implements AudioPlayerState {
  const _GetSurahFailedfailed({required this.failure});
  

 final  Failure failure;

/// Create a copy of AudioPlayerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSurahFailedfailedCopyWith<_GetSurahFailedfailed> get copyWith => __$GetSurahFailedfailedCopyWithImpl<_GetSurahFailedfailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSurahFailedfailed&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'AudioPlayerState.getSurahFailed(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$GetSurahFailedfailedCopyWith<$Res> implements $AudioPlayerStateCopyWith<$Res> {
  factory _$GetSurahFailedfailedCopyWith(_GetSurahFailedfailed value, $Res Function(_GetSurahFailedfailed) _then) = __$GetSurahFailedfailedCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class __$GetSurahFailedfailedCopyWithImpl<$Res>
    implements _$GetSurahFailedfailedCopyWith<$Res> {
  __$GetSurahFailedfailedCopyWithImpl(this._self, this._then);

  final _GetSurahFailedfailed _self;
  final $Res Function(_GetSurahFailedfailed) _then;

/// Create a copy of AudioPlayerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_GetSurahFailedfailed(
failure: null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

/// @nodoc


class _AudioPlaying implements AudioPlayerState {
  const _AudioPlaying();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AudioPlaying);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AudioPlayerState.audioPlaying()';
}


}




/// @nodoc


class _AudioFinished implements AudioPlayerState {
  const _AudioFinished();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AudioFinished);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AudioPlayerState.audioFinished()';
}


}




/// @nodoc


class _AudioPaused implements AudioPlayerState {
  const _AudioPaused();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AudioPaused);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AudioPlayerState.audioPaused()';
}


}




/// @nodoc


class _AudioProgressUpdated implements AudioPlayerState {
  const _AudioProgressUpdated({required this.position, required this.duration});
  

 final  Duration position;
 final  Duration duration;

/// Create a copy of AudioPlayerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AudioProgressUpdatedCopyWith<_AudioProgressUpdated> get copyWith => __$AudioProgressUpdatedCopyWithImpl<_AudioProgressUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AudioProgressUpdated&&(identical(other.position, position) || other.position == position)&&(identical(other.duration, duration) || other.duration == duration));
}


@override
int get hashCode => Object.hash(runtimeType,position,duration);

@override
String toString() {
  return 'AudioPlayerState.audioProgressUpdated(position: $position, duration: $duration)';
}


}

/// @nodoc
abstract mixin class _$AudioProgressUpdatedCopyWith<$Res> implements $AudioPlayerStateCopyWith<$Res> {
  factory _$AudioProgressUpdatedCopyWith(_AudioProgressUpdated value, $Res Function(_AudioProgressUpdated) _then) = __$AudioProgressUpdatedCopyWithImpl;
@useResult
$Res call({
 Duration position, Duration duration
});




}
/// @nodoc
class __$AudioProgressUpdatedCopyWithImpl<$Res>
    implements _$AudioProgressUpdatedCopyWith<$Res> {
  __$AudioProgressUpdatedCopyWithImpl(this._self, this._then);

  final _AudioProgressUpdated _self;
  final $Res Function(_AudioProgressUpdated) _then;

/// Create a copy of AudioPlayerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? position = null,Object? duration = null,}) {
  return _then(_AudioProgressUpdated(
position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as Duration,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}


}

/// @nodoc


class _ReciterLoaded implements AudioPlayerState {
  const _ReciterLoaded({required this.reciter});
  

 final  ReciterModel reciter;

/// Create a copy of AudioPlayerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReciterLoadedCopyWith<_ReciterLoaded> get copyWith => __$ReciterLoadedCopyWithImpl<_ReciterLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReciterLoaded&&(identical(other.reciter, reciter) || other.reciter == reciter));
}


@override
int get hashCode => Object.hash(runtimeType,reciter);

@override
String toString() {
  return 'AudioPlayerState.reciterLoaded(reciter: $reciter)';
}


}

/// @nodoc
abstract mixin class _$ReciterLoadedCopyWith<$Res> implements $AudioPlayerStateCopyWith<$Res> {
  factory _$ReciterLoadedCopyWith(_ReciterLoaded value, $Res Function(_ReciterLoaded) _then) = __$ReciterLoadedCopyWithImpl;
@useResult
$Res call({
 ReciterModel reciter
});


$ReciterModelCopyWith<$Res> get reciter;

}
/// @nodoc
class __$ReciterLoadedCopyWithImpl<$Res>
    implements _$ReciterLoadedCopyWith<$Res> {
  __$ReciterLoadedCopyWithImpl(this._self, this._then);

  final _ReciterLoaded _self;
  final $Res Function(_ReciterLoaded) _then;

/// Create a copy of AudioPlayerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reciter = null,}) {
  return _then(_ReciterLoaded(
reciter: null == reciter ? _self.reciter : reciter // ignore: cast_nullable_to_non_nullable
as ReciterModel,
  ));
}

/// Create a copy of AudioPlayerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReciterModelCopyWith<$Res> get reciter {
  
  return $ReciterModelCopyWith<$Res>(_self.reciter, (value) {
    return _then(_self.copyWith(reciter: value));
  });
}
}

/// @nodoc


class _SurahDetailsOpened implements AudioPlayerState {
  const _SurahDetailsOpened();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SurahDetailsOpened);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AudioPlayerState.surahDetailsOpened()';
}


}




/// @nodoc


class _SurahDetailsClosed implements AudioPlayerState {
  const _SurahDetailsClosed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SurahDetailsClosed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AudioPlayerState.surahDetailsClosed()';
}


}




// dart format on
