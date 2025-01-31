// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginRequestDTOImpl _$$LoginRequestDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginRequestDTOImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$LoginRequestDTOImplToJson(
        _$LoginRequestDTOImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
