// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegistrationEvent {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) registration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? registration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? registration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Registration value) registration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Registration value)? registration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Registration value)? registration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of RegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegistrationEventCopyWith<RegistrationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationEventCopyWith<$Res> {
  factory $RegistrationEventCopyWith(
          RegistrationEvent value, $Res Function(RegistrationEvent) then) =
      _$RegistrationEventCopyWithImpl<$Res, RegistrationEvent>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$RegistrationEventCopyWithImpl<$Res, $Val extends RegistrationEvent>
    implements $RegistrationEventCopyWith<$Res> {
  _$RegistrationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistrationImplCopyWith<$Res>
    implements $RegistrationEventCopyWith<$Res> {
  factory _$$RegistrationImplCopyWith(
          _$RegistrationImpl value, $Res Function(_$RegistrationImpl) then) =
      __$$RegistrationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$RegistrationImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$RegistrationImpl>
    implements _$$RegistrationImplCopyWith<$Res> {
  __$$RegistrationImplCopyWithImpl(
      _$RegistrationImpl _value, $Res Function(_$RegistrationImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$RegistrationImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegistrationImpl implements _Registration {
  const _$RegistrationImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'RegistrationEvent.registration(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of RegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationImplCopyWith<_$RegistrationImpl> get copyWith =>
      __$$RegistrationImplCopyWithImpl<_$RegistrationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) registration,
  }) {
    return registration(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? registration,
  }) {
    return registration?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? registration,
    required TResult orElse(),
  }) {
    if (registration != null) {
      return registration(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Registration value) registration,
  }) {
    return registration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Registration value)? registration,
  }) {
    return registration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Registration value)? registration,
    required TResult orElse(),
  }) {
    if (registration != null) {
      return registration(this);
    }
    return orElse();
  }
}

abstract class _Registration implements RegistrationEvent {
  const factory _Registration(
      {required final String email,
      required final String password}) = _$RegistrationImpl;

  @override
  String get email;
  @override
  String get password;

  /// Create a copy of RegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationImplCopyWith<_$RegistrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegistrationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegistrationStateInitial value) initial,
    required TResult Function(_RegistrationStateLoading value) loading,
    required TResult Function(_RegistrationStateFailure value) failure,
    required TResult Function(_RegistrationStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistrationStateInitial value)? initial,
    TResult? Function(_RegistrationStateLoading value)? loading,
    TResult? Function(_RegistrationStateFailure value)? failure,
    TResult? Function(_RegistrationStateSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistrationStateInitial value)? initial,
    TResult Function(_RegistrationStateLoading value)? loading,
    TResult Function(_RegistrationStateFailure value)? failure,
    TResult Function(_RegistrationStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res, RegistrationState>;
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res, $Val extends RegistrationState>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RegistrationStateInitialImplCopyWith<$Res> {
  factory _$$RegistrationStateInitialImplCopyWith(
          _$RegistrationStateInitialImpl value,
          $Res Function(_$RegistrationStateInitialImpl) then) =
      __$$RegistrationStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationStateInitialImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res,
        _$RegistrationStateInitialImpl>
    implements _$$RegistrationStateInitialImplCopyWith<$Res> {
  __$$RegistrationStateInitialImplCopyWithImpl(
      _$RegistrationStateInitialImpl _value,
      $Res Function(_$RegistrationStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegistrationStateInitialImpl implements _RegistrationStateInitial {
  const _$RegistrationStateInitialImpl();

  @override
  String toString() {
    return 'RegistrationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function() success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function()? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegistrationStateInitial value) initial,
    required TResult Function(_RegistrationStateLoading value) loading,
    required TResult Function(_RegistrationStateFailure value) failure,
    required TResult Function(_RegistrationStateSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistrationStateInitial value)? initial,
    TResult? Function(_RegistrationStateLoading value)? loading,
    TResult? Function(_RegistrationStateFailure value)? failure,
    TResult? Function(_RegistrationStateSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistrationStateInitial value)? initial,
    TResult Function(_RegistrationStateLoading value)? loading,
    TResult Function(_RegistrationStateFailure value)? failure,
    TResult Function(_RegistrationStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _RegistrationStateInitial implements RegistrationState {
  const factory _RegistrationStateInitial() = _$RegistrationStateInitialImpl;
}

/// @nodoc
abstract class _$$RegistrationStateLoadingImplCopyWith<$Res> {
  factory _$$RegistrationStateLoadingImplCopyWith(
          _$RegistrationStateLoadingImpl value,
          $Res Function(_$RegistrationStateLoadingImpl) then) =
      __$$RegistrationStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationStateLoadingImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res,
        _$RegistrationStateLoadingImpl>
    implements _$$RegistrationStateLoadingImplCopyWith<$Res> {
  __$$RegistrationStateLoadingImplCopyWithImpl(
      _$RegistrationStateLoadingImpl _value,
      $Res Function(_$RegistrationStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegistrationStateLoadingImpl implements _RegistrationStateLoading {
  const _$RegistrationStateLoadingImpl();

  @override
  String toString() {
    return 'RegistrationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function() success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function()? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegistrationStateInitial value) initial,
    required TResult Function(_RegistrationStateLoading value) loading,
    required TResult Function(_RegistrationStateFailure value) failure,
    required TResult Function(_RegistrationStateSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistrationStateInitial value)? initial,
    TResult? Function(_RegistrationStateLoading value)? loading,
    TResult? Function(_RegistrationStateFailure value)? failure,
    TResult? Function(_RegistrationStateSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistrationStateInitial value)? initial,
    TResult Function(_RegistrationStateLoading value)? loading,
    TResult Function(_RegistrationStateFailure value)? failure,
    TResult Function(_RegistrationStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _RegistrationStateLoading implements RegistrationState {
  const factory _RegistrationStateLoading() = _$RegistrationStateLoadingImpl;
}

/// @nodoc
abstract class _$$RegistrationStateFailureImplCopyWith<$Res> {
  factory _$$RegistrationStateFailureImplCopyWith(
          _$RegistrationStateFailureImpl value,
          $Res Function(_$RegistrationStateFailureImpl) then) =
      __$$RegistrationStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RegistrationStateFailureImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res,
        _$RegistrationStateFailureImpl>
    implements _$$RegistrationStateFailureImplCopyWith<$Res> {
  __$$RegistrationStateFailureImplCopyWithImpl(
      _$RegistrationStateFailureImpl _value,
      $Res Function(_$RegistrationStateFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RegistrationStateFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegistrationStateFailureImpl implements _RegistrationStateFailure {
  const _$RegistrationStateFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RegistrationState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationStateFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationStateFailureImplCopyWith<_$RegistrationStateFailureImpl>
      get copyWith => __$$RegistrationStateFailureImplCopyWithImpl<
          _$RegistrationStateFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function() success,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function()? success,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegistrationStateInitial value) initial,
    required TResult Function(_RegistrationStateLoading value) loading,
    required TResult Function(_RegistrationStateFailure value) failure,
    required TResult Function(_RegistrationStateSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistrationStateInitial value)? initial,
    TResult? Function(_RegistrationStateLoading value)? loading,
    TResult? Function(_RegistrationStateFailure value)? failure,
    TResult? Function(_RegistrationStateSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistrationStateInitial value)? initial,
    TResult Function(_RegistrationStateLoading value)? loading,
    TResult Function(_RegistrationStateFailure value)? failure,
    TResult Function(_RegistrationStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _RegistrationStateFailure implements RegistrationState {
  const factory _RegistrationStateFailure(final String message) =
      _$RegistrationStateFailureImpl;

  String get message;

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationStateFailureImplCopyWith<_$RegistrationStateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegistrationStateSuccessImplCopyWith<$Res> {
  factory _$$RegistrationStateSuccessImplCopyWith(
          _$RegistrationStateSuccessImpl value,
          $Res Function(_$RegistrationStateSuccessImpl) then) =
      __$$RegistrationStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationStateSuccessImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res,
        _$RegistrationStateSuccessImpl>
    implements _$$RegistrationStateSuccessImplCopyWith<$Res> {
  __$$RegistrationStateSuccessImplCopyWithImpl(
      _$RegistrationStateSuccessImpl _value,
      $Res Function(_$RegistrationStateSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegistrationStateSuccessImpl implements _RegistrationStateSuccess {
  const _$RegistrationStateSuccessImpl();

  @override
  String toString() {
    return 'RegistrationState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationStateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegistrationStateInitial value) initial,
    required TResult Function(_RegistrationStateLoading value) loading,
    required TResult Function(_RegistrationStateFailure value) failure,
    required TResult Function(_RegistrationStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistrationStateInitial value)? initial,
    TResult? Function(_RegistrationStateLoading value)? loading,
    TResult? Function(_RegistrationStateFailure value)? failure,
    TResult? Function(_RegistrationStateSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistrationStateInitial value)? initial,
    TResult Function(_RegistrationStateLoading value)? loading,
    TResult Function(_RegistrationStateFailure value)? failure,
    TResult Function(_RegistrationStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _RegistrationStateSuccess implements RegistrationState {
  const factory _RegistrationStateSuccess() = _$RegistrationStateSuccessImpl;
}
