import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token_response_dto.freezed.dart';
part 'refresh_token_response_dto.g.dart';

@freezed
class RefreshTokenResponseDTO with _$RefreshTokenResponseDTO {
  const factory RefreshTokenResponseDTO({
    @JsonKey(name: 'message')
    required String message,

    @JsonKey(name: 'access_token')
    required String accessToken,

    @JsonKey(name: 'refresh_token')
    required String refreshToken,

  }) = _RefreshTokenResponseDTO;

  factory RefreshTokenResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenResponseDTOFromJson(json);
}
