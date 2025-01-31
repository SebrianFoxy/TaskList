// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegistrationResponseDTO _$RegistrationResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _RegistrationResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$RegistrationResponseDTO {
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;

  /// Serializes this RegistrationResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegistrationResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegistrationResponseDTOCopyWith<RegistrationResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationResponseDTOCopyWith<$Res> {
  factory $RegistrationResponseDTOCopyWith(RegistrationResponseDTO value,
          $Res Function(RegistrationResponseDTO) then) =
      _$RegistrationResponseDTOCopyWithImpl<$Res, RegistrationResponseDTO>;
  @useResult
  $Res call({@JsonKey(name: "message") String message});
}

/// @nodoc
class _$RegistrationResponseDTOCopyWithImpl<$Res,
        $Val extends RegistrationResponseDTO>
    implements $RegistrationResponseDTOCopyWith<$Res> {
  _$RegistrationResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistrationResponseDTO
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
abstract class _$$RegistrationResponseDTOImplCopyWith<$Res>
    implements $RegistrationResponseDTOCopyWith<$Res> {
  factory _$$RegistrationResponseDTOImplCopyWith(
          _$RegistrationResponseDTOImpl value,
          $Res Function(_$RegistrationResponseDTOImpl) then) =
      __$$RegistrationResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "message") String message});
}

/// @nodoc
class __$$RegistrationResponseDTOImplCopyWithImpl<$Res>
    extends _$RegistrationResponseDTOCopyWithImpl<$Res,
        _$RegistrationResponseDTOImpl>
    implements _$$RegistrationResponseDTOImplCopyWith<$Res> {
  __$$RegistrationResponseDTOImplCopyWithImpl(
      _$RegistrationResponseDTOImpl _value,
      $Res Function(_$RegistrationResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RegistrationResponseDTOImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistrationResponseDTOImpl implements _RegistrationResponseDTO {
  const _$RegistrationResponseDTOImpl(
      {@JsonKey(name: "message") required this.message});

  factory _$RegistrationResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegistrationResponseDTOImplFromJson(json);

  @override
  @JsonKey(name: "message")
  final String message;

  @override
  String toString() {
    return 'RegistrationResponseDTO(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationResponseDTOImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RegistrationResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationResponseDTOImplCopyWith<_$RegistrationResponseDTOImpl>
      get copyWith => __$$RegistrationResponseDTOImplCopyWithImpl<
          _$RegistrationResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistrationResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _RegistrationResponseDTO implements RegistrationResponseDTO {
  const factory _RegistrationResponseDTO(
          {@JsonKey(name: "message") required final String message}) =
      _$RegistrationResponseDTOImpl;

  factory _RegistrationResponseDTO.fromJson(Map<String, dynamic> json) =
      _$RegistrationResponseDTOImpl.fromJson;

  @override
  @JsonKey(name: "message")
  String get message;

  /// Create a copy of RegistrationResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationResponseDTOImplCopyWith<_$RegistrationResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
