// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telegram_user_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TelegramUserResponseDTOImpl _$$TelegramUserResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$TelegramUserResponseDTOImpl(
      id: (json['id'] as num).toInt(),
      userID: (json['userID'] as num).toInt(),
      chatID: json['chat_id'] as String,
    );

Map<String, dynamic> _$$TelegramUserResponseDTOImplToJson(
        _$TelegramUserResponseDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userID': instance.userID,
      'chat_id': instance.chatID,
    };
