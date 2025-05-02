import 'package:freezed_annotation/freezed_annotation.dart';

part 'telegram_user_response_dto.freezed.dart';
part 'telegram_user_response_dto.g.dart';

@freezed
class TelegramUserResponseDTO with _$TelegramUserResponseDTO {
  const factory TelegramUserResponseDTO ({
    @JsonKey(name: "id")
    required int id,

    @JsonKey(name: "userID")
    required int userID,

    @JsonKey(name: "chat_id")
    required String chatID,

  }) = _TelegramUserResponseDTO;

  factory TelegramUserResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$TelegramUserResponseDTOFromJson(json);
}