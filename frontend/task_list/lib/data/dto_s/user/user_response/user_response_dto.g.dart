// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserResponseDTOImpl _$$UserResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$UserResponseDTOImpl(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      admin: json['admin'] as bool,
      dateJoined: DateTime.parse(json['dateJoined'] as String),
    );

Map<String, dynamic> _$$UserResponseDTOImplToJson(
        _$UserResponseDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'admin': instance.admin,
      'dateJoined': instance.dateJoined.toIso8601String(),
    };
