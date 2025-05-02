// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telegram_user_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TelegramUserResponseDTO _$TelegramUserResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _TelegramUserResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$TelegramUserResponseDTO {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "userID")
  int get userID => throw _privateConstructorUsedError;
  @JsonKey(name: "chat_id")
  String get chatID => throw _privateConstructorUsedError;

  /// Serializes this TelegramUserResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TelegramUserResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TelegramUserResponseDTOCopyWith<TelegramUserResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelegramUserResponseDTOCopyWith<$Res> {
  factory $TelegramUserResponseDTOCopyWith(TelegramUserResponseDTO value,
          $Res Function(TelegramUserResponseDTO) then) =
      _$TelegramUserResponseDTOCopyWithImpl<$Res, TelegramUserResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "userID") int userID,
      @JsonKey(name: "chat_id") String chatID});
}

/// @nodoc
class _$TelegramUserResponseDTOCopyWithImpl<$Res,
        $Val extends TelegramUserResponseDTO>
    implements $TelegramUserResponseDTOCopyWith<$Res> {
  _$TelegramUserResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TelegramUserResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userID = null,
    Object? chatID = null,
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
      chatID: null == chatID
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TelegramUserResponseDTOImplCopyWith<$Res>
    implements $TelegramUserResponseDTOCopyWith<$Res> {
  factory _$$TelegramUserResponseDTOImplCopyWith(
          _$TelegramUserResponseDTOImpl value,
          $Res Function(_$TelegramUserResponseDTOImpl) then) =
      __$$TelegramUserResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "userID") int userID,
      @JsonKey(name: "chat_id") String chatID});
}

/// @nodoc
class __$$TelegramUserResponseDTOImplCopyWithImpl<$Res>
    extends _$TelegramUserResponseDTOCopyWithImpl<$Res,
        _$TelegramUserResponseDTOImpl>
    implements _$$TelegramUserResponseDTOImplCopyWith<$Res> {
  __$$TelegramUserResponseDTOImplCopyWithImpl(
      _$TelegramUserResponseDTOImpl _value,
      $Res Function(_$TelegramUserResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of TelegramUserResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userID = null,
    Object? chatID = null,
  }) {
    return _then(_$TelegramUserResponseDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int,
      chatID: null == chatID
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TelegramUserResponseDTOImpl implements _TelegramUserResponseDTO {
  const _$TelegramUserResponseDTOImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "userID") required this.userID,
      @JsonKey(name: "chat_id") required this.chatID});

  factory _$TelegramUserResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TelegramUserResponseDTOImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "userID")
  final int userID;
  @override
  @JsonKey(name: "chat_id")
  final String chatID;

  @override
  String toString() {
    return 'TelegramUserResponseDTO(id: $id, userID: $userID, chatID: $chatID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TelegramUserResponseDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.chatID, chatID) || other.chatID == chatID));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userID, chatID);

  /// Create a copy of TelegramUserResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TelegramUserResponseDTOImplCopyWith<_$TelegramUserResponseDTOImpl>
      get copyWith => __$$TelegramUserResponseDTOImplCopyWithImpl<
          _$TelegramUserResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TelegramUserResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _TelegramUserResponseDTO implements TelegramUserResponseDTO {
  const factory _TelegramUserResponseDTO(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "userID") required final int userID,
          @JsonKey(name: "chat_id") required final String chatID}) =
      _$TelegramUserResponseDTOImpl;

  factory _TelegramUserResponseDTO.fromJson(Map<String, dynamic> json) =
      _$TelegramUserResponseDTOImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "userID")
  int get userID;
  @override
  @JsonKey(name: "chat_id")
  String get chatID;

  /// Create a copy of TelegramUserResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TelegramUserResponseDTOImplCopyWith<_$TelegramUserResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
