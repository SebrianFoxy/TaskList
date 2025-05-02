// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telegram_code_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TelegramCodeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() buttonPressed,
    required TResult Function() buttonTimerTicked,
    required TResult Function() redirectToTelegramBot,
    required TResult Function() webSocketMessageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? buttonPressed,
    TResult? Function()? buttonTimerTicked,
    TResult? Function()? redirectToTelegramBot,
    TResult? Function()? webSocketMessageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? buttonPressed,
    TResult Function()? buttonTimerTicked,
    TResult Function()? redirectToTelegramBot,
    TResult Function()? webSocketMessageReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ButtonPressedEvent value) buttonPressed,
    required TResult Function(_ButtonTimerTicked value) buttonTimerTicked,
    required TResult Function(_RedirectToTelegramBot value)
        redirectToTelegramBot,
    required TResult Function(_WebSocketMessageReceived value)
        webSocketMessageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ButtonPressedEvent value)? buttonPressed,
    TResult? Function(_ButtonTimerTicked value)? buttonTimerTicked,
    TResult? Function(_RedirectToTelegramBot value)? redirectToTelegramBot,
    TResult? Function(_WebSocketMessageReceived value)?
        webSocketMessageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ButtonPressedEvent value)? buttonPressed,
    TResult Function(_ButtonTimerTicked value)? buttonTimerTicked,
    TResult Function(_RedirectToTelegramBot value)? redirectToTelegramBot,
    TResult Function(_WebSocketMessageReceived value)? webSocketMessageReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelegramCodeEventCopyWith<$Res> {
  factory $TelegramCodeEventCopyWith(
          TelegramCodeEvent value, $Res Function(TelegramCodeEvent) then) =
      _$TelegramCodeEventCopyWithImpl<$Res, TelegramCodeEvent>;
}

/// @nodoc
class _$TelegramCodeEventCopyWithImpl<$Res, $Val extends TelegramCodeEvent>
    implements $TelegramCodeEventCopyWith<$Res> {
  _$TelegramCodeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TelegramCodeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ButtonPressedEventImplCopyWith<$Res> {
  factory _$$ButtonPressedEventImplCopyWith(_$ButtonPressedEventImpl value,
          $Res Function(_$ButtonPressedEventImpl) then) =
      __$$ButtonPressedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ButtonPressedEventImplCopyWithImpl<$Res>
    extends _$TelegramCodeEventCopyWithImpl<$Res, _$ButtonPressedEventImpl>
    implements _$$ButtonPressedEventImplCopyWith<$Res> {
  __$$ButtonPressedEventImplCopyWithImpl(_$ButtonPressedEventImpl _value,
      $Res Function(_$ButtonPressedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TelegramCodeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ButtonPressedEventImpl implements _ButtonPressedEvent {
  const _$ButtonPressedEventImpl();

  @override
  String toString() {
    return 'TelegramCodeEvent.buttonPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ButtonPressedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() buttonPressed,
    required TResult Function() buttonTimerTicked,
    required TResult Function() redirectToTelegramBot,
    required TResult Function() webSocketMessageReceived,
  }) {
    return buttonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? buttonPressed,
    TResult? Function()? buttonTimerTicked,
    TResult? Function()? redirectToTelegramBot,
    TResult? Function()? webSocketMessageReceived,
  }) {
    return buttonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? buttonPressed,
    TResult Function()? buttonTimerTicked,
    TResult Function()? redirectToTelegramBot,
    TResult Function()? webSocketMessageReceived,
    required TResult orElse(),
  }) {
    if (buttonPressed != null) {
      return buttonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ButtonPressedEvent value) buttonPressed,
    required TResult Function(_ButtonTimerTicked value) buttonTimerTicked,
    required TResult Function(_RedirectToTelegramBot value)
        redirectToTelegramBot,
    required TResult Function(_WebSocketMessageReceived value)
        webSocketMessageReceived,
  }) {
    return buttonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ButtonPressedEvent value)? buttonPressed,
    TResult? Function(_ButtonTimerTicked value)? buttonTimerTicked,
    TResult? Function(_RedirectToTelegramBot value)? redirectToTelegramBot,
    TResult? Function(_WebSocketMessageReceived value)?
        webSocketMessageReceived,
  }) {
    return buttonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ButtonPressedEvent value)? buttonPressed,
    TResult Function(_ButtonTimerTicked value)? buttonTimerTicked,
    TResult Function(_RedirectToTelegramBot value)? redirectToTelegramBot,
    TResult Function(_WebSocketMessageReceived value)? webSocketMessageReceived,
    required TResult orElse(),
  }) {
    if (buttonPressed != null) {
      return buttonPressed(this);
    }
    return orElse();
  }
}

abstract class _ButtonPressedEvent implements TelegramCodeEvent {
  const factory _ButtonPressedEvent() = _$ButtonPressedEventImpl;
}

/// @nodoc
abstract class _$$ButtonTimerTickedImplCopyWith<$Res> {
  factory _$$ButtonTimerTickedImplCopyWith(_$ButtonTimerTickedImpl value,
          $Res Function(_$ButtonTimerTickedImpl) then) =
      __$$ButtonTimerTickedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ButtonTimerTickedImplCopyWithImpl<$Res>
    extends _$TelegramCodeEventCopyWithImpl<$Res, _$ButtonTimerTickedImpl>
    implements _$$ButtonTimerTickedImplCopyWith<$Res> {
  __$$ButtonTimerTickedImplCopyWithImpl(_$ButtonTimerTickedImpl _value,
      $Res Function(_$ButtonTimerTickedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TelegramCodeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ButtonTimerTickedImpl implements _ButtonTimerTicked {
  const _$ButtonTimerTickedImpl();

  @override
  String toString() {
    return 'TelegramCodeEvent.buttonTimerTicked()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ButtonTimerTickedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() buttonPressed,
    required TResult Function() buttonTimerTicked,
    required TResult Function() redirectToTelegramBot,
    required TResult Function() webSocketMessageReceived,
  }) {
    return buttonTimerTicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? buttonPressed,
    TResult? Function()? buttonTimerTicked,
    TResult? Function()? redirectToTelegramBot,
    TResult? Function()? webSocketMessageReceived,
  }) {
    return buttonTimerTicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? buttonPressed,
    TResult Function()? buttonTimerTicked,
    TResult Function()? redirectToTelegramBot,
    TResult Function()? webSocketMessageReceived,
    required TResult orElse(),
  }) {
    if (buttonTimerTicked != null) {
      return buttonTimerTicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ButtonPressedEvent value) buttonPressed,
    required TResult Function(_ButtonTimerTicked value) buttonTimerTicked,
    required TResult Function(_RedirectToTelegramBot value)
        redirectToTelegramBot,
    required TResult Function(_WebSocketMessageReceived value)
        webSocketMessageReceived,
  }) {
    return buttonTimerTicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ButtonPressedEvent value)? buttonPressed,
    TResult? Function(_ButtonTimerTicked value)? buttonTimerTicked,
    TResult? Function(_RedirectToTelegramBot value)? redirectToTelegramBot,
    TResult? Function(_WebSocketMessageReceived value)?
        webSocketMessageReceived,
  }) {
    return buttonTimerTicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ButtonPressedEvent value)? buttonPressed,
    TResult Function(_ButtonTimerTicked value)? buttonTimerTicked,
    TResult Function(_RedirectToTelegramBot value)? redirectToTelegramBot,
    TResult Function(_WebSocketMessageReceived value)? webSocketMessageReceived,
    required TResult orElse(),
  }) {
    if (buttonTimerTicked != null) {
      return buttonTimerTicked(this);
    }
    return orElse();
  }
}

abstract class _ButtonTimerTicked implements TelegramCodeEvent {
  const factory _ButtonTimerTicked() = _$ButtonTimerTickedImpl;
}

/// @nodoc
abstract class _$$RedirectToTelegramBotImplCopyWith<$Res> {
  factory _$$RedirectToTelegramBotImplCopyWith(
          _$RedirectToTelegramBotImpl value,
          $Res Function(_$RedirectToTelegramBotImpl) then) =
      __$$RedirectToTelegramBotImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RedirectToTelegramBotImplCopyWithImpl<$Res>
    extends _$TelegramCodeEventCopyWithImpl<$Res, _$RedirectToTelegramBotImpl>
    implements _$$RedirectToTelegramBotImplCopyWith<$Res> {
  __$$RedirectToTelegramBotImplCopyWithImpl(_$RedirectToTelegramBotImpl _value,
      $Res Function(_$RedirectToTelegramBotImpl) _then)
      : super(_value, _then);

  /// Create a copy of TelegramCodeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RedirectToTelegramBotImpl implements _RedirectToTelegramBot {
  const _$RedirectToTelegramBotImpl();

  @override
  String toString() {
    return 'TelegramCodeEvent.redirectToTelegramBot()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RedirectToTelegramBotImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() buttonPressed,
    required TResult Function() buttonTimerTicked,
    required TResult Function() redirectToTelegramBot,
    required TResult Function() webSocketMessageReceived,
  }) {
    return redirectToTelegramBot();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? buttonPressed,
    TResult? Function()? buttonTimerTicked,
    TResult? Function()? redirectToTelegramBot,
    TResult? Function()? webSocketMessageReceived,
  }) {
    return redirectToTelegramBot?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? buttonPressed,
    TResult Function()? buttonTimerTicked,
    TResult Function()? redirectToTelegramBot,
    TResult Function()? webSocketMessageReceived,
    required TResult orElse(),
  }) {
    if (redirectToTelegramBot != null) {
      return redirectToTelegramBot();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ButtonPressedEvent value) buttonPressed,
    required TResult Function(_ButtonTimerTicked value) buttonTimerTicked,
    required TResult Function(_RedirectToTelegramBot value)
        redirectToTelegramBot,
    required TResult Function(_WebSocketMessageReceived value)
        webSocketMessageReceived,
  }) {
    return redirectToTelegramBot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ButtonPressedEvent value)? buttonPressed,
    TResult? Function(_ButtonTimerTicked value)? buttonTimerTicked,
    TResult? Function(_RedirectToTelegramBot value)? redirectToTelegramBot,
    TResult? Function(_WebSocketMessageReceived value)?
        webSocketMessageReceived,
  }) {
    return redirectToTelegramBot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ButtonPressedEvent value)? buttonPressed,
    TResult Function(_ButtonTimerTicked value)? buttonTimerTicked,
    TResult Function(_RedirectToTelegramBot value)? redirectToTelegramBot,
    TResult Function(_WebSocketMessageReceived value)? webSocketMessageReceived,
    required TResult orElse(),
  }) {
    if (redirectToTelegramBot != null) {
      return redirectToTelegramBot(this);
    }
    return orElse();
  }
}

abstract class _RedirectToTelegramBot implements TelegramCodeEvent {
  const factory _RedirectToTelegramBot() = _$RedirectToTelegramBotImpl;
}

/// @nodoc
abstract class _$$WebSocketMessageReceivedImplCopyWith<$Res> {
  factory _$$WebSocketMessageReceivedImplCopyWith(
          _$WebSocketMessageReceivedImpl value,
          $Res Function(_$WebSocketMessageReceivedImpl) then) =
      __$$WebSocketMessageReceivedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WebSocketMessageReceivedImplCopyWithImpl<$Res>
    extends _$TelegramCodeEventCopyWithImpl<$Res,
        _$WebSocketMessageReceivedImpl>
    implements _$$WebSocketMessageReceivedImplCopyWith<$Res> {
  __$$WebSocketMessageReceivedImplCopyWithImpl(
      _$WebSocketMessageReceivedImpl _value,
      $Res Function(_$WebSocketMessageReceivedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TelegramCodeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WebSocketMessageReceivedImpl implements _WebSocketMessageReceived {
  const _$WebSocketMessageReceivedImpl();

  @override
  String toString() {
    return 'TelegramCodeEvent.webSocketMessageReceived()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebSocketMessageReceivedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() buttonPressed,
    required TResult Function() buttonTimerTicked,
    required TResult Function() redirectToTelegramBot,
    required TResult Function() webSocketMessageReceived,
  }) {
    return webSocketMessageReceived();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? buttonPressed,
    TResult? Function()? buttonTimerTicked,
    TResult? Function()? redirectToTelegramBot,
    TResult? Function()? webSocketMessageReceived,
  }) {
    return webSocketMessageReceived?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? buttonPressed,
    TResult Function()? buttonTimerTicked,
    TResult Function()? redirectToTelegramBot,
    TResult Function()? webSocketMessageReceived,
    required TResult orElse(),
  }) {
    if (webSocketMessageReceived != null) {
      return webSocketMessageReceived();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ButtonPressedEvent value) buttonPressed,
    required TResult Function(_ButtonTimerTicked value) buttonTimerTicked,
    required TResult Function(_RedirectToTelegramBot value)
        redirectToTelegramBot,
    required TResult Function(_WebSocketMessageReceived value)
        webSocketMessageReceived,
  }) {
    return webSocketMessageReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ButtonPressedEvent value)? buttonPressed,
    TResult? Function(_ButtonTimerTicked value)? buttonTimerTicked,
    TResult? Function(_RedirectToTelegramBot value)? redirectToTelegramBot,
    TResult? Function(_WebSocketMessageReceived value)?
        webSocketMessageReceived,
  }) {
    return webSocketMessageReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ButtonPressedEvent value)? buttonPressed,
    TResult Function(_ButtonTimerTicked value)? buttonTimerTicked,
    TResult Function(_RedirectToTelegramBot value)? redirectToTelegramBot,
    TResult Function(_WebSocketMessageReceived value)? webSocketMessageReceived,
    required TResult orElse(),
  }) {
    if (webSocketMessageReceived != null) {
      return webSocketMessageReceived(this);
    }
    return orElse();
  }
}

abstract class _WebSocketMessageReceived implements TelegramCodeEvent {
  const factory _WebSocketMessageReceived() = _$WebSocketMessageReceivedImpl;
}

/// @nodoc
mixin _$TelegramCodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic isVerified) active,
    required TResult Function(int remainingTime, String telegramCode) inactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic isVerified)? active,
    TResult? Function(int remainingTime, String telegramCode)? inactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic isVerified)? active,
    TResult Function(int remainingTime, String telegramCode)? inactive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TelegramCodeButtonActive value) active,
    required TResult Function(_TelegramCodeButtonInactive value) inactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TelegramCodeButtonActive value)? active,
    TResult? Function(_TelegramCodeButtonInactive value)? inactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TelegramCodeButtonActive value)? active,
    TResult Function(_TelegramCodeButtonInactive value)? inactive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelegramCodeStateCopyWith<$Res> {
  factory $TelegramCodeStateCopyWith(
          TelegramCodeState value, $Res Function(TelegramCodeState) then) =
      _$TelegramCodeStateCopyWithImpl<$Res, TelegramCodeState>;
}

/// @nodoc
class _$TelegramCodeStateCopyWithImpl<$Res, $Val extends TelegramCodeState>
    implements $TelegramCodeStateCopyWith<$Res> {
  _$TelegramCodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TelegramCodeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TelegramCodeButtonActiveImplCopyWith<$Res> {
  factory _$$TelegramCodeButtonActiveImplCopyWith(
          _$TelegramCodeButtonActiveImpl value,
          $Res Function(_$TelegramCodeButtonActiveImpl) then) =
      __$$TelegramCodeButtonActiveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic isVerified});
}

/// @nodoc
class __$$TelegramCodeButtonActiveImplCopyWithImpl<$Res>
    extends _$TelegramCodeStateCopyWithImpl<$Res,
        _$TelegramCodeButtonActiveImpl>
    implements _$$TelegramCodeButtonActiveImplCopyWith<$Res> {
  __$$TelegramCodeButtonActiveImplCopyWithImpl(
      _$TelegramCodeButtonActiveImpl _value,
      $Res Function(_$TelegramCodeButtonActiveImpl) _then)
      : super(_value, _then);

  /// Create a copy of TelegramCodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVerified = freezed,
  }) {
    return _then(_$TelegramCodeButtonActiveImpl(
      isVerified: freezed == isVerified ? _value.isVerified! : isVerified,
    ));
  }
}

/// @nodoc

class _$TelegramCodeButtonActiveImpl implements TelegramCodeButtonActive {
  const _$TelegramCodeButtonActiveImpl({this.isVerified = false});

  @override
  @JsonKey()
  final dynamic isVerified;

  @override
  String toString() {
    return 'TelegramCodeState.active(isVerified: $isVerified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TelegramCodeButtonActiveImpl &&
            const DeepCollectionEquality()
                .equals(other.isVerified, isVerified));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isVerified));

  /// Create a copy of TelegramCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TelegramCodeButtonActiveImplCopyWith<_$TelegramCodeButtonActiveImpl>
      get copyWith => __$$TelegramCodeButtonActiveImplCopyWithImpl<
          _$TelegramCodeButtonActiveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic isVerified) active,
    required TResult Function(int remainingTime, String telegramCode) inactive,
  }) {
    return active(isVerified);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic isVerified)? active,
    TResult? Function(int remainingTime, String telegramCode)? inactive,
  }) {
    return active?.call(isVerified);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic isVerified)? active,
    TResult Function(int remainingTime, String telegramCode)? inactive,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active(isVerified);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TelegramCodeButtonActive value) active,
    required TResult Function(_TelegramCodeButtonInactive value) inactive,
  }) {
    return active(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TelegramCodeButtonActive value)? active,
    TResult? Function(_TelegramCodeButtonInactive value)? inactive,
  }) {
    return active?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TelegramCodeButtonActive value)? active,
    TResult Function(_TelegramCodeButtonInactive value)? inactive,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active(this);
    }
    return orElse();
  }
}

abstract class TelegramCodeButtonActive implements TelegramCodeState {
  const factory TelegramCodeButtonActive({final dynamic isVerified}) =
      _$TelegramCodeButtonActiveImpl;

  dynamic get isVerified;

  /// Create a copy of TelegramCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TelegramCodeButtonActiveImplCopyWith<_$TelegramCodeButtonActiveImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TelegramCodeButtonInactiveImplCopyWith<$Res> {
  factory _$$TelegramCodeButtonInactiveImplCopyWith(
          _$TelegramCodeButtonInactiveImpl value,
          $Res Function(_$TelegramCodeButtonInactiveImpl) then) =
      __$$TelegramCodeButtonInactiveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int remainingTime, String telegramCode});
}

/// @nodoc
class __$$TelegramCodeButtonInactiveImplCopyWithImpl<$Res>
    extends _$TelegramCodeStateCopyWithImpl<$Res,
        _$TelegramCodeButtonInactiveImpl>
    implements _$$TelegramCodeButtonInactiveImplCopyWith<$Res> {
  __$$TelegramCodeButtonInactiveImplCopyWithImpl(
      _$TelegramCodeButtonInactiveImpl _value,
      $Res Function(_$TelegramCodeButtonInactiveImpl) _then)
      : super(_value, _then);

  /// Create a copy of TelegramCodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remainingTime = null,
    Object? telegramCode = null,
  }) {
    return _then(_$TelegramCodeButtonInactiveImpl(
      remainingTime: null == remainingTime
          ? _value.remainingTime
          : remainingTime // ignore: cast_nullable_to_non_nullable
              as int,
      telegramCode: null == telegramCode
          ? _value.telegramCode
          : telegramCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TelegramCodeButtonInactiveImpl implements _TelegramCodeButtonInactive {
  const _$TelegramCodeButtonInactiveImpl(
      {required this.remainingTime, required this.telegramCode});

  @override
  final int remainingTime;
  @override
  final String telegramCode;

  @override
  String toString() {
    return 'TelegramCodeState.inactive(remainingTime: $remainingTime, telegramCode: $telegramCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TelegramCodeButtonInactiveImpl &&
            (identical(other.remainingTime, remainingTime) ||
                other.remainingTime == remainingTime) &&
            (identical(other.telegramCode, telegramCode) ||
                other.telegramCode == telegramCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remainingTime, telegramCode);

  /// Create a copy of TelegramCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TelegramCodeButtonInactiveImplCopyWith<_$TelegramCodeButtonInactiveImpl>
      get copyWith => __$$TelegramCodeButtonInactiveImplCopyWithImpl<
          _$TelegramCodeButtonInactiveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic isVerified) active,
    required TResult Function(int remainingTime, String telegramCode) inactive,
  }) {
    return inactive(remainingTime, telegramCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic isVerified)? active,
    TResult? Function(int remainingTime, String telegramCode)? inactive,
  }) {
    return inactive?.call(remainingTime, telegramCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic isVerified)? active,
    TResult Function(int remainingTime, String telegramCode)? inactive,
    required TResult orElse(),
  }) {
    if (inactive != null) {
      return inactive(remainingTime, telegramCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TelegramCodeButtonActive value) active,
    required TResult Function(_TelegramCodeButtonInactive value) inactive,
  }) {
    return inactive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TelegramCodeButtonActive value)? active,
    TResult? Function(_TelegramCodeButtonInactive value)? inactive,
  }) {
    return inactive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TelegramCodeButtonActive value)? active,
    TResult Function(_TelegramCodeButtonInactive value)? inactive,
    required TResult orElse(),
  }) {
    if (inactive != null) {
      return inactive(this);
    }
    return orElse();
  }
}

abstract class _TelegramCodeButtonInactive implements TelegramCodeState {
  const factory _TelegramCodeButtonInactive(
      {required final int remainingTime,
      required final String telegramCode}) = _$TelegramCodeButtonInactiveImpl;

  int get remainingTime;
  String get telegramCode;

  /// Create a copy of TelegramCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TelegramCodeButtonInactiveImplCopyWith<_$TelegramCodeButtonInactiveImpl>
      get copyWith => throw _privateConstructorUsedError;
}
