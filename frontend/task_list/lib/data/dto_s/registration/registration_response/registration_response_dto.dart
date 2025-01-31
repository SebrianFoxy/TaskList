import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_response_dto.g.dart';
part 'registration_response_dto.freezed.dart';

@freezed
class RegistrationResponseDTO with _$RegistrationResponseDTO {
  const factory RegistrationResponseDTO({
    @JsonKey(name: "message")
    required String message,

  }) = _RegistrationResponseDTO;

  factory RegistrationResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$RegistrationResponseDTOFromJson(json);
}
