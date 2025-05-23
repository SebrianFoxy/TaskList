// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserResponseDTO _$UserResponseDTOFromJson(Map<String, dynamic> json) {
  return _UserResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$UserResponseDTO {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "admin")
  bool get admin => throw _privateConstructorUsedError;
  @JsonKey(name: "dateJoined")
  DateTime get dateJoined => throw _privateConstructorUsedError;

  /// Serializes this UserResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserResponseDTOCopyWith<UserResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseDTOCopyWith<$Res> {
  factory $UserResponseDTOCopyWith(
          UserResponseDTO value, $Res Function(UserResponseDTO) then) =
      _$UserResponseDTOCopyWithImpl<$Res, UserResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "admin") bool admin,
      @JsonKey(name: "dateJoined") DateTime dateJoined});
}

/// @nodoc
class _$UserResponseDTOCopyWithImpl<$Res, $Val extends UserResponseDTO>
    implements $UserResponseDTOCopyWith<$Res> {
  _$UserResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? admin = null,
    Object? dateJoined = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as bool,
      dateJoined: null == dateJoined
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserResponseDTOImplCopyWith<$Res>
    implements $UserResponseDTOCopyWith<$Res> {
  factory _$$UserResponseDTOImplCopyWith(_$UserResponseDTOImpl value,
          $Res Function(_$UserResponseDTOImpl) then) =
      __$$UserResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "admin") bool admin,
      @JsonKey(name: "dateJoined") DateTime dateJoined});
}

/// @nodoc
class __$$UserResponseDTOImplCopyWithImpl<$Res>
    extends _$UserResponseDTOCopyWithImpl<$Res, _$UserResponseDTOImpl>
    implements _$$UserResponseDTOImplCopyWith<$Res> {
  __$$UserResponseDTOImplCopyWithImpl(
      _$UserResponseDTOImpl _value, $Res Function(_$UserResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? admin = null,
    Object? dateJoined = null,
  }) {
    return _then(_$UserResponseDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as bool,
      dateJoined: null == dateJoined
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserResponseDTOImpl implements _UserResponseDTO {
  const _$UserResponseDTOImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "email") required this.email,
      @JsonKey(name: "admin") required this.admin,
      @JsonKey(name: "dateJoined") required this.dateJoined});

  factory _$UserResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserResponseDTOImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "admin")
  final bool admin;
  @override
  @JsonKey(name: "dateJoined")
  final DateTime dateJoined;

  @override
  String toString() {
    return 'UserResponseDTO(id: $id, email: $email, admin: $admin, dateJoined: $dateJoined)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserResponseDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.admin, admin) || other.admin == admin) &&
            (identical(other.dateJoined, dateJoined) ||
                other.dateJoined == dateJoined));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, admin, dateJoined);

  /// Create a copy of UserResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserResponseDTOImplCopyWith<_$UserResponseDTOImpl> get copyWith =>
      __$$UserResponseDTOImplCopyWithImpl<_$UserResponseDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _UserResponseDTO implements UserResponseDTO {
  const factory _UserResponseDTO(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "email") required final String email,
          @JsonKey(name: "admin") required final bool admin,
          @JsonKey(name: "dateJoined") required final DateTime dateJoined}) =
      _$UserResponseDTOImpl;

  factory _UserResponseDTO.fromJson(Map<String, dynamic> json) =
      _$UserResponseDTOImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "admin")
  bool get admin;
  @override
  @JsonKey(name: "dateJoined")
  DateTime get dateJoined;

  /// Create a copy of UserResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserResponseDTOImplCopyWith<_$UserResponseDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
