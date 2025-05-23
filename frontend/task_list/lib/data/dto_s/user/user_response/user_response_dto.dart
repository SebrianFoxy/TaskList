import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response_dto.freezed.dart';
part 'user_response_dto.g.dart';

@freezed
class UserResponseDTO with _$UserResponseDTO {
  const factory UserResponseDTO ({
    @JsonKey(name: "id")
    required int id,

    @JsonKey(name: "email")
    required String email,

    @JsonKey(name: "admin")
    required bool admin,

    @JsonKey(name: "dateJoined")
    required DateTime dateJoined,

  }) = _UserResponseDTO;

  factory UserResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$UserResponseDTOFromJson(json);
}