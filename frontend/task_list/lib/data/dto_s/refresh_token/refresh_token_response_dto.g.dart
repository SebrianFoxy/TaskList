// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefreshTokenResponseDTOImpl _$$RefreshTokenResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$RefreshTokenResponseDTOImpl(
      message: json['message'] as String,
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$RefreshTokenResponseDTOImplToJson(
        _$RefreshTokenResponseDTOImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
