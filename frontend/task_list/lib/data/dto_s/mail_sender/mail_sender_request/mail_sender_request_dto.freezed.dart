// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mail_sender_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MailSenderRequestDTO _$MailSenderRequestDTOFromJson(Map<String, dynamic> json) {
  return _MailSenderRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$MailSenderRequestDTO {
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;

  /// Serializes this MailSenderRequestDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MailSenderRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MailSenderRequestDTOCopyWith<MailSenderRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MailSenderRequestDTOCopyWith<$Res> {
  factory $MailSenderRequestDTOCopyWith(MailSenderRequestDTO value,
          $Res Function(MailSenderRequestDTO) then) =
      _$MailSenderRequestDTOCopyWithImpl<$Res, MailSenderRequestDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class _$MailSenderRequestDTOCopyWithImpl<$Res,
        $Val extends MailSenderRequestDTO>
    implements $MailSenderRequestDTOCopyWith<$Res> {
  _$MailSenderRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MailSenderRequestDTO
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
abstract class _$$MailSenderRequestDTOImplCopyWith<$Res>
    implements $MailSenderRequestDTOCopyWith<$Res> {
  factory _$$MailSenderRequestDTOImplCopyWith(_$MailSenderRequestDTOImpl value,
          $Res Function(_$MailSenderRequestDTOImpl) then) =
      __$$MailSenderRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class __$$MailSenderRequestDTOImplCopyWithImpl<$Res>
    extends _$MailSenderRequestDTOCopyWithImpl<$Res, _$MailSenderRequestDTOImpl>
    implements _$$MailSenderRequestDTOImplCopyWith<$Res> {
  __$$MailSenderRequestDTOImplCopyWithImpl(_$MailSenderRequestDTOImpl _value,
      $Res Function(_$MailSenderRequestDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of MailSenderRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$MailSenderRequestDTOImpl(
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
class _$MailSenderRequestDTOImpl implements _MailSenderRequestDTO {
  const _$MailSenderRequestDTOImpl(
      {@JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'password') required this.password});

  factory _$MailSenderRequestDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MailSenderRequestDTOImplFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'password')
  final String password;

  @override
  String toString() {
    return 'MailSenderRequestDTO(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MailSenderRequestDTOImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of MailSenderRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MailSenderRequestDTOImplCopyWith<_$MailSenderRequestDTOImpl>
      get copyWith =>
          __$$MailSenderRequestDTOImplCopyWithImpl<_$MailSenderRequestDTOImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MailSenderRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _MailSenderRequestDTO implements MailSenderRequestDTO {
  const factory _MailSenderRequestDTO(
          {@JsonKey(name: 'email') required final String email,
          @JsonKey(name: 'password') required final String password}) =
      _$MailSenderRequestDTOImpl;

  factory _MailSenderRequestDTO.fromJson(Map<String, dynamic> json) =
      _$MailSenderRequestDTOImpl.fromJson;

  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'password')
  String get password;

  /// Create a copy of MailSenderRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MailSenderRequestDTOImplCopyWith<_$MailSenderRequestDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
