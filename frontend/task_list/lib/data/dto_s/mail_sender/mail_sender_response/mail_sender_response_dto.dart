import 'package:freezed_annotation/freezed_annotation.dart';

part 'mail_sender_response_dto.freezed.dart';
part 'mail_sender_response_dto.g.dart';

@freezed
class MailSenderResponseDTO with _$MailSenderResponseDTO {
  const factory MailSenderResponseDTO ({
    @JsonKey(name: 'message')
    required String message,

  }) = _MailSenderResponseDTO;

  factory MailSenderResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$MailSenderResponseDTOFromJson(json);
}
