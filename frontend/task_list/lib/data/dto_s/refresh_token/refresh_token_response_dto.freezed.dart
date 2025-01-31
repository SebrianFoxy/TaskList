// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_token_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RefreshTokenResponseDTO _$RefreshTokenResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _RefreshTokenResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$RefreshTokenResponseDTO {
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this RefreshTokenResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefreshTokenResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefreshTokenResponseDTOCopyWith<RefreshTokenResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshTokenResponseDTOCopyWith<$Res> {
  factory $RefreshTokenResponseDTOCopyWith(RefreshTokenResponseDTO value,
          $Res Function(RefreshTokenResponseDTO) then) =
      _$RefreshTokenResponseDTOCopyWithImpl<$Res, RefreshTokenResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String message,
      @JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class _$RefreshTokenResponseDTOCopyWithImpl<$Res,
        $Val extends RefreshTokenResponseDTO>
    implements $RefreshTokenResponseDTOCopyWith<$Res> {
  _$RefreshTokenResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefreshTokenResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefreshTokenResponseDTOImplCopyWith<$Res>
    implements $RefreshTokenResponseDTOCopyWith<$Res> {
  factory _$$RefreshTokenResponseDTOImplCopyWith(
          _$RefreshTokenResponseDTOImpl value,
          $Res Function(_$RefreshTokenResponseDTOImpl) then) =
      __$$RefreshTokenResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String message,
      @JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class __$$RefreshTokenResponseDTOImplCopyWithImpl<$Res>
    extends _$RefreshTokenResponseDTOCopyWithImpl<$Res,
        _$RefreshTokenResponseDTOImpl>
    implements _$$RefreshTokenResponseDTOImplCopyWith<$Res> {
  __$$RefreshTokenResponseDTOImplCopyWithImpl(
      _$RefreshTokenResponseDTOImpl _value,
      $Res Function(_$RefreshTokenResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefreshTokenResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$RefreshTokenResponseDTOImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefreshTokenResponseDTOImpl implements _RefreshTokenResponseDTO {
  const _$RefreshTokenResponseDTOImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'refresh_token') required this.refreshToken});

  factory _$RefreshTokenResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefreshTokenResponseDTOImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  @override
  String toString() {
    return 'RefreshTokenResponseDTO(message: $message, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshTokenResponseDTOImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, message, accessToken, refreshToken);

  /// Create a copy of RefreshTokenResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshTokenResponseDTOImplCopyWith<_$RefreshTokenResponseDTOImpl>
      get copyWith => __$$RefreshTokenResponseDTOImplCopyWithImpl<
          _$RefreshTokenResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefreshTokenResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _RefreshTokenResponseDTO implements RefreshTokenResponseDTO {
  const factory _RefreshTokenResponseDTO(
          {@JsonKey(name: 'message') required final String message,
          @JsonKey(name: 'access_token') required final String accessToken,
          @JsonKey(name: 'refresh_token') required final String refreshToken}) =
      _$RefreshTokenResponseDTOImpl;

  factory _RefreshTokenResponseDTO.fromJson(Map<String, dynamic> json) =
      _$RefreshTokenResponseDTOImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;

  /// Create a copy of RefreshTokenResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshTokenResponseDTOImplCopyWith<_$RefreshTokenResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
