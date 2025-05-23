// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telegram_code_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TelegramCodeResponseDTOImpl _$$TelegramCodeResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$TelegramCodeResponseDTOImpl(
      id: (json['id'] as num).toInt(),
      userID: (json['userID'] as num).toInt(),
      telegramCode: json['tg_code'] as String,
    );

Map<String, dynamic> _$$TelegramCodeResponseDTOImplToJson(
        _$TelegramCodeResponseDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userID': instance.userID,
      'tg_code': instance.telegramCode,
    };
