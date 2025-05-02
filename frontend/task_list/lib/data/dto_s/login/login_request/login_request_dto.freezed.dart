// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginRequestDTO _$LoginRequestDTOFromJson(Map<String, dynamic> json) {
  return _LoginRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$LoginRequestDTO {
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String get password => throw _privateConstructorUsedError;

  /// Serializes this LoginRequestDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginRequestDTOCopyWith<LoginRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRequestDTOCopyWith<$Res> {
  factory $LoginRequestDTOCopyWith(
          LoginRequestDTO value, $Res Function(LoginRequestDTO) then) =
      _$LoginRequestDTOCopyWithImpl<$Res, LoginRequestDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "email") String email,
      @JsonKey(name: "password") String password});
}

/// @nodoc
class _$LoginRequestDTOCopyWithImpl<$Res, $Val extends LoginRequestDTO>
    implements $LoginRequestDTOCopyWith<$Res> {
  _$LoginRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginRequestDTO
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
abstract class _$$LoginRequestDTOImplCopyWith<$Res>
    implements $LoginRequestDTOCopyWith<$Res> {
  factory _$$LoginRequestDTOImplCopyWith(_$LoginRequestDTOImpl value,
          $Res Function(_$LoginRequestDTOImpl) then) =
      __$$LoginRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "email") String email,
      @JsonKey(name: "password") String password});
}

/// @nodoc
class __$$LoginRequestDTOImplCopyWithImpl<$Res>
    extends _$LoginRequestDTOCopyWithImpl<$Res, _$LoginRequestDTOImpl>
    implements _$$LoginRequestDTOImplCopyWith<$Res> {
  __$$LoginRequestDTOImplCopyWithImpl(
      _$LoginRequestDTOImpl _value, $Res Function(_$LoginRequestDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginRequestDTOImpl(
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
@JsonSerializable()
class _$LoginRequestDTOImpl implements _LoginRequestDTO {
  const _$LoginRequestDTOImpl(
      {@JsonKey(name: "email") required this.email,
      @JsonKey(name: "password") required this.password});

  factory _$LoginRequestDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginRequestDTOImplFromJson(json);

  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "password")
  final String password;

  @override
  String toString() {
    return 'LoginRequestDTO(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRequestDTOImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of LoginRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginRequestDTOImplCopyWith<_$LoginRequestDTOImpl> get copyWith =>
      __$$LoginRequestDTOImplCopyWithImpl<_$LoginRequestDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _LoginRequestDTO implements LoginRequestDTO {
  const factory _LoginRequestDTO(
          {@JsonKey(name: "email") required final String email,
          @JsonKey(name: "password") required final String password}) =
      _$LoginRequestDTOImpl;

  factory _LoginRequestDTO.fromJson(Map<String, dynamic> json) =
      _$LoginRequestDTOImpl.fromJson;

  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "password")
  String get password;

  /// Create a copy of LoginRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginRequestDTOImplCopyWith<_$LoginRequestDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
