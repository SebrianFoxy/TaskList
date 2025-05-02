import 'package:freezed_annotation/freezed_annotation.dart';

part 'mail_sender_request_dto.freezed.dart';
part 'mail_sender_request_dto.g.dart';

@freezed
class MailSenderRequestDTO with _$MailSenderRequestDTO {
  const factory MailSenderRequestDTO ({
    @JsonKey(name: 'email')
    required String email,

    @JsonKey(name: 'password')
    required String password,
  }) = _MailSenderRequestDTO;

  factory MailSenderRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$MailSenderRequestDTOFromJson(json);
}
