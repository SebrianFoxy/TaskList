// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telegram_code_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TelegramCodeResponseDTO _$TelegramCodeResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _TelegramCodeResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$TelegramCodeResponseDTO {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "userID")
  int get userID => throw _privateConstructorUsedError;
  @JsonKey(name: "tg_code")
  String get telegramCode => throw _privateConstructorUsedError;

  /// Serializes this TelegramCodeResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TelegramCodeResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TelegramCodeResponseDTOCopyWith<TelegramCodeResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelegramCodeResponseDTOCopyWith<$Res> {
  factory $TelegramCodeResponseDTOCopyWith(TelegramCodeResponseDTO value,
          $Res Function(TelegramCodeResponseDTO) then) =
      _$TelegramCodeResponseDTOCopyWithImpl<$Res, TelegramCodeResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "userID") int userID,
      @JsonKey(name: "tg_code") String telegramCode});
}

/// @nodoc
class _$TelegramCodeResponseDTOCopyWithImpl<$Res,
        $Val extends TelegramCodeResponseDTO>
    implements $TelegramCodeResponseDTOCopyWith<$Res> {
  _$TelegramCodeResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TelegramCodeResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userID = null,
    Object? telegramCode = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int,
      telegramCode: null == telegramCode
          ? _value.telegramCode
          : telegramCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TelegramCodeResponseDTOImplCopyWith<$Res>
    implements $TelegramCodeResponseDTOCopyWith<$Res> {
  factory _$$TelegramCodeResponseDTOImplCopyWith(
          _$TelegramCodeResponseDTOImpl value,
          $Res Function(_$TelegramCodeResponseDTOImpl) then) =
      __$$TelegramCodeResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "userID") int userID,
      @JsonKey(name: "tg_code") String telegramCode});
}

/// @nodoc
class __$$TelegramCodeResponseDTOImplCopyWithImpl<$Res>
    extends _$TelegramCodeResponseDTOCopyWithImpl<$Res,
        _$TelegramCodeResponseDTOImpl>
    implements _$$TelegramCodeResponseDTOImplCopyWith<$Res> {
  __$$TelegramCodeResponseDTOImplCopyWithImpl(
      _$TelegramCodeResponseDTOImpl _value,
      $Res Function(_$TelegramCodeResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of TelegramCodeResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userID = null,
    Object? telegramCode = null,
  }) {
    return _then(_$TelegramCodeResponseDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int,
      telegramCode: null == telegramCode
          ? _value.telegramCode
          : telegramCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TelegramCodeResponseDTOImpl implements _TelegramCodeResponseDTO {
  const _$TelegramCodeResponseDTOImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "userID") required this.userID,
      @JsonKey(name: "tg_code") required this.telegramCode});

  factory _$TelegramCodeResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TelegramCodeResponseDTOImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "userID")
  final int userID;
  @override
  @JsonKey(name: "tg_code")
  final String telegramCode;

  @override
  String toString() {
    return 'TelegramCodeResponseDTO(id: $id, userID: $userID, telegramCode: $telegramCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TelegramCodeResponseDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.telegramCode, telegramCode) ||
                other.telegramCode == telegramCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userID, telegramCode);

  /// Create a copy of TelegramCodeResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TelegramCodeResponseDTOImplCopyWith<_$TelegramCodeResponseDTOImpl>
      get copyWith => __$$TelegramCodeResponseDTOImplCopyWithImpl<
          _$TelegramCodeResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TelegramCodeResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _TelegramCodeResponseDTO implements TelegramCodeResponseDTO {
  const factory _TelegramCodeResponseDTO(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "userID") required final int userID,
          @JsonKey(name: "tg_code") required final String telegramCode}) =
      _$TelegramCodeResponseDTOImpl;

  factory _TelegramCodeResponseDTO.fromJson(Map<String, dynamic> json) =
      _$TelegramCodeResponseDTOImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "userID")
  int get userID;
  @override
  @JsonKey(name: "tg_code")
  String get telegramCode;

  /// Create a copy of TelegramCodeResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TelegramCodeResponseDTOImplCopyWith<_$TelegramCodeResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
