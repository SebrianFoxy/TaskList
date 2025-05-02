import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_dto.g.dart';
part 'login_response_dto.freezed.dart';

@freezed
class LoginResponseDTO with _$LoginResponseDTO {
  const factory LoginResponseDTO ({
    @JsonKey(name: "message") // Move the annotation here
    required String message,

    @JsonKey(name: "access_token") // Move the annotation here
    required String accessToken,

    @JsonKey(name: "refresh_token") // Move the annotation here
    required String refreshToken,
  }) = _LoginResponseDTO;

  factory LoginResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDTOFromJson(json);
}
