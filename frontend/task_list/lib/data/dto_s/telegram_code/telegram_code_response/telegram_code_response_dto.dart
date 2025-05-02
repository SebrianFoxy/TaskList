import 'package:freezed_annotation/freezed_annotation.dart';

part 'telegram_code_response_dto.freezed.dart';
part 'telegram_code_response_dto.g.dart';

@freezed
class TelegramCodeResponseDTO with _$TelegramCodeResponseDTO {
  const factory TelegramCodeResponseDTO ({
    @JsonKey(name: "id")
    required int id,

    @JsonKey(name: "userID")
    required int userID,

    @JsonKey(name: "tg_code")
    required String telegramCode,

  }) = _TelegramCodeResponseDTO;

  factory TelegramCodeResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$TelegramCodeResponseDTOFromJson(json);
}