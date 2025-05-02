// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mail_sender_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MailSenderResponseDTO _$MailSenderResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _MailSenderResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$MailSenderResponseDTO {
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;

  /// Serializes this MailSenderResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MailSenderResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MailSenderResponseDTOCopyWith<MailSenderResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MailSenderResponseDTOCopyWith<$Res> {
  factory $MailSenderResponseDTOCopyWith(MailSenderResponseDTO value,
          $Res Function(MailSenderResponseDTO) then) =
      _$MailSenderResponseDTOCopyWithImpl<$Res, MailSenderResponseDTO>;
  @useResult
  $Res call({@JsonKey(name: 'message') String message});
}

/// @nodoc
class _$MailSenderResponseDTOCopyWithImpl<$Res,
        $Val extends MailSenderResponseDTO>
    implements $MailSenderResponseDTOCopyWith<$Res> {
  _$MailSenderResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MailSenderResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MailSenderResponseDTOImplCopyWith<$Res>
    implements $MailSenderResponseDTOCopyWith<$Res> {
  factory _$$MailSenderResponseDTOImplCopyWith(
          _$MailSenderResponseDTOImpl value,
          $Res Function(_$MailSenderResponseDTOImpl) then) =
      __$$MailSenderResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'message') String message});
}

/// @nodoc
class __$$MailSenderResponseDTOImplCopyWithImpl<$Res>
    extends _$MailSenderResponseDTOCopyWithImpl<$Res,
        _$MailSenderResponseDTOImpl>
    implements _$$MailSenderResponseDTOImplCopyWith<$Res> {
  __$$MailSenderResponseDTOImplCopyWithImpl(_$MailSenderResponseDTOImpl _value,
      $Res Function(_$MailSenderResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of MailSenderResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MailSenderResponseDTOImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MailSenderResponseDTOImpl implements _MailSenderResponseDTO {
  const _$MailSenderResponseDTOImpl(
      {@JsonKey(name: 'message') required this.message});

  factory _$MailSenderResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MailSenderResponseDTOImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String message;

  @override
  String toString() {
    return 'MailSenderResponseDTO(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MailSenderResponseDTOImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MailSenderResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MailSenderResponseDTOImplCopyWith<_$MailSenderResponseDTOImpl>
      get copyWith => __$$MailSenderResponseDTOImplCopyWithImpl<
          _$MailSenderResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MailSenderResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _MailSenderResponseDTO implements MailSenderResponseDTO {
  const factory _MailSenderResponseDTO(
          {@JsonKey(name: 'message') required final String message}) =
      _$MailSenderResponseDTOImpl;

  factory _MailSenderResponseDTO.fromJson(Map<String, dynamic> json) =
      _$MailSenderResponseDTOImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String get message;

  /// Create a copy of MailSenderResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MailSenderResponseDTOImplCopyWith<_$MailSenderResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
