// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginResponseDTO _$LoginResponseDTOFromJson(Map<String, dynamic> json) {
  return _LoginResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseDTO {
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "access_token")
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "refresh_token")
  String get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this LoginResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginResponseDTOCopyWith<LoginResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseDTOCopyWith<$Res> {
  factory $LoginResponseDTOCopyWith(
          LoginResponseDTO value, $Res Function(LoginResponseDTO) then) =
      _$LoginResponseDTOCopyWithImpl<$Res, LoginResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "message") String message,
      @JsonKey(name: "access_token") String accessToken,
      @JsonKey(name: "refresh_token") String refreshToken});
}

/// @nodoc
class _$LoginResponseDTOCopyWithImpl<$Res, $Val extends LoginResponseDTO>
    implements $LoginResponseDTOCopyWith<$Res> {
  _$LoginResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginResponseDTO
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
abstract class _$$LoginResponseDTOImplCopyWith<$Res>
    implements $LoginResponseDTOCopyWith<$Res> {
  factory _$$LoginResponseDTOImplCopyWith(_$LoginResponseDTOImpl value,
          $Res Function(_$LoginResponseDTOImpl) then) =
      __$$LoginResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "message") String message,
      @JsonKey(name: "access_token") String accessToken,
      @JsonKey(name: "refresh_token") String refreshToken});
}

/// @nodoc
class __$$LoginResponseDTOImplCopyWithImpl<$Res>
    extends _$LoginResponseDTOCopyWithImpl<$Res, _$LoginResponseDTOImpl>
    implements _$$LoginResponseDTOImplCopyWith<$Res> {
  __$$LoginResponseDTOImplCopyWithImpl(_$LoginResponseDTOImpl _value,
      $Res Function(_$LoginResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$LoginResponseDTOImpl(
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
class _$LoginResponseDTOImpl implements _LoginResponseDTO {
  const _$LoginResponseDTOImpl(
      {@JsonKey(name: "message") required this.message,
      @JsonKey(name: "access_token") required this.accessToken,
      @JsonKey(name: "refresh_token") required this.refreshToken});

  factory _$LoginResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseDTOImplFromJson(json);

  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "access_token")
  final String accessToken;
  @override
  @JsonKey(name: "refresh_token")
  final String refreshToken;

  @override
  String toString() {
    return 'LoginResponseDTO(message: $message, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseDTOImpl &&
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

  /// Create a copy of LoginResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseDTOImplCopyWith<_$LoginResponseDTOImpl> get copyWith =>
      __$$LoginResponseDTOImplCopyWithImpl<_$LoginResponseDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _LoginResponseDTO implements LoginResponseDTO {
  const factory _LoginResponseDTO(
          {@JsonKey(name: "message") required final String message,
          @JsonKey(name: "access_token") required final String accessToken,
          @JsonKey(name: "refresh_token") required final String refreshToken}) =
      _$LoginResponseDTOImpl;

  factory _LoginResponseDTO.fromJson(Map<String, dynamic> json) =
      _$LoginResponseDTOImpl.fromJson;

  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "access_token")
  String get accessToken;
  @override
  @JsonKey(name: "refresh_token")
  String get refreshToken;

  /// Create a copy of LoginResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginResponseDTOImplCopyWith<_$LoginResponseDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
