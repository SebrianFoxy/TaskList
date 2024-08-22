// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(bool notification) changeNotification,
    required TResult Function() changeAlarmNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool notification)? changeNotification,
    TResult? Function()? changeAlarmNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool notification)? changeNotification,
    TResult Function()? changeAlarmNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_ChangeNotification value) changeNotification,
    required TResult Function(_ChangeAlarmNotification value)
        changeAlarmNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ChangeNotification value)? changeNotification,
    TResult? Function(_ChangeAlarmNotification value)? changeAlarmNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_ChangeNotification value)? changeNotification,
    TResult Function(_ChangeAlarmNotification value)? changeAlarmNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res, NotificationEvent>;
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res, $Val extends NotificationEvent>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'NotificationEvent.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(bool notification) changeNotification,
    required TResult Function() changeAlarmNotification,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool notification)? changeNotification,
    TResult? Function()? changeAlarmNotification,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool notification)? changeNotification,
    TResult Function()? changeAlarmNotification,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_ChangeNotification value) changeNotification,
    required TResult Function(_ChangeAlarmNotification value)
        changeAlarmNotification,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ChangeNotification value)? changeNotification,
    TResult? Function(_ChangeAlarmNotification value)? changeAlarmNotification,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_ChangeNotification value)? changeNotification,
    TResult Function(_ChangeAlarmNotification value)? changeAlarmNotification,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NotificationEvent {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ChangeNotificationImplCopyWith<$Res> {
  factory _$$ChangeNotificationImplCopyWith(_$ChangeNotificationImpl value,
          $Res Function(_$ChangeNotificationImpl) then) =
      __$$ChangeNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool notification});
}

/// @nodoc
class __$$ChangeNotificationImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$ChangeNotificationImpl>
    implements _$$ChangeNotificationImplCopyWith<$Res> {
  __$$ChangeNotificationImplCopyWithImpl(_$ChangeNotificationImpl _value,
      $Res Function(_$ChangeNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
  }) {
    return _then(_$ChangeNotificationImpl(
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeNotificationImpl implements _ChangeNotification {
  const _$ChangeNotificationImpl({required this.notification});

  @override
  final bool notification;

  @override
  String toString() {
    return 'NotificationEvent.changeNotification(notification: $notification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeNotificationImpl &&
            (identical(other.notification, notification) ||
                other.notification == notification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeNotificationImplCopyWith<_$ChangeNotificationImpl> get copyWith =>
      __$$ChangeNotificationImplCopyWithImpl<_$ChangeNotificationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(bool notification) changeNotification,
    required TResult Function() changeAlarmNotification,
  }) {
    return changeNotification(notification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool notification)? changeNotification,
    TResult? Function()? changeAlarmNotification,
  }) {
    return changeNotification?.call(notification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool notification)? changeNotification,
    TResult Function()? changeAlarmNotification,
    required TResult orElse(),
  }) {
    if (changeNotification != null) {
      return changeNotification(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_ChangeNotification value) changeNotification,
    required TResult Function(_ChangeAlarmNotification value)
        changeAlarmNotification,
  }) {
    return changeNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ChangeNotification value)? changeNotification,
    TResult? Function(_ChangeAlarmNotification value)? changeAlarmNotification,
  }) {
    return changeNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_ChangeNotification value)? changeNotification,
    TResult Function(_ChangeAlarmNotification value)? changeAlarmNotification,
    required TResult orElse(),
  }) {
    if (changeNotification != null) {
      return changeNotification(this);
    }
    return orElse();
  }
}

abstract class _ChangeNotification implements NotificationEvent {
  const factory _ChangeNotification({required final bool notification}) =
      _$ChangeNotificationImpl;

  bool get notification;
  @JsonKey(ignore: true)
  _$$ChangeNotificationImplCopyWith<_$ChangeNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeAlarmNotificationImplCopyWith<$Res> {
  factory _$$ChangeAlarmNotificationImplCopyWith(
          _$ChangeAlarmNotificationImpl value,
          $Res Function(_$ChangeAlarmNotificationImpl) then) =
      __$$ChangeAlarmNotificationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeAlarmNotificationImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$ChangeAlarmNotificationImpl>
    implements _$$ChangeAlarmNotificationImplCopyWith<$Res> {
  __$$ChangeAlarmNotificationImplCopyWithImpl(
      _$ChangeAlarmNotificationImpl _value,
      $Res Function(_$ChangeAlarmNotificationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangeAlarmNotificationImpl implements _ChangeAlarmNotification {
  const _$ChangeAlarmNotificationImpl();

  @override
  String toString() {
    return 'NotificationEvent.changeAlarmNotification()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAlarmNotificationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(bool notification) changeNotification,
    required TResult Function() changeAlarmNotification,
  }) {
    return changeAlarmNotification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool notification)? changeNotification,
    TResult? Function()? changeAlarmNotification,
  }) {
    return changeAlarmNotification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool notification)? changeNotification,
    TResult Function()? changeAlarmNotification,
    required TResult orElse(),
  }) {
    if (changeAlarmNotification != null) {
      return changeAlarmNotification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_ChangeNotification value) changeNotification,
    required TResult Function(_ChangeAlarmNotification value)
        changeAlarmNotification,
  }) {
    return changeAlarmNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ChangeNotification value)? changeNotification,
    TResult? Function(_ChangeAlarmNotification value)? changeAlarmNotification,
  }) {
    return changeAlarmNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_ChangeNotification value)? changeNotification,
    TResult Function(_ChangeAlarmNotification value)? changeAlarmNotification,
    required TResult orElse(),
  }) {
    if (changeAlarmNotification != null) {
      return changeAlarmNotification(this);
    }
    return orElse();
  }
}

abstract class _ChangeAlarmNotification implements NotificationEvent {
  const factory _ChangeAlarmNotification() = _$ChangeAlarmNotificationImpl;
}

/// @nodoc
mixin _$NotificationState {
  bool get notification => throw _privateConstructorUsedError;
  bool get alarmNotification => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
  @useResult
  $Res call({bool notification, bool alarmNotification});
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
    Object? alarmNotification = null,
  }) {
    return _then(_value.copyWith(
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as bool,
      alarmNotification: null == alarmNotification
          ? _value.alarmNotification
          : alarmNotification // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationStateImplCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$$NotificationStateImplCopyWith(_$NotificationStateImpl value,
          $Res Function(_$NotificationStateImpl) then) =
      __$$NotificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool notification, bool alarmNotification});
}

/// @nodoc
class __$$NotificationStateImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$NotificationStateImpl>
    implements _$$NotificationStateImplCopyWith<$Res> {
  __$$NotificationStateImplCopyWithImpl(_$NotificationStateImpl _value,
      $Res Function(_$NotificationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
    Object? alarmNotification = null,
  }) {
    return _then(_$NotificationStateImpl(
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as bool,
      alarmNotification: null == alarmNotification
          ? _value.alarmNotification
          : alarmNotification // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NotificationStateImpl implements _NotificationState {
  const _$NotificationStateImpl(
      {required this.notification, required this.alarmNotification});

  @override
  final bool notification;
  @override
  final bool alarmNotification;

  @override
  String toString() {
    return 'NotificationState(notification: $notification, alarmNotification: $alarmNotification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationStateImpl &&
            (identical(other.notification, notification) ||
                other.notification == notification) &&
            (identical(other.alarmNotification, alarmNotification) ||
                other.alarmNotification == alarmNotification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notification, alarmNotification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      __$$NotificationStateImplCopyWithImpl<_$NotificationStateImpl>(
          this, _$identity);
}

abstract class _NotificationState implements NotificationState {
  const factory _NotificationState(
      {required final bool notification,
      required final bool alarmNotification}) = _$NotificationStateImpl;

  @override
  bool get notification;
  @override
  bool get alarmNotification;
  @override
  @JsonKey(ignore: true)
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
