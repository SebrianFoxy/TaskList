import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_response_dto.freezed.dart';
part 'task_response_dto.g.dart';

@freezed
class TaskResponseDTO with _$TaskResponseDTO {
  const factory TaskResponseDTO ({
    @JsonKey(name: "id")
    required int serverID,

    @JsonKey(name: "task")
    required String task,

    @JsonKey(name: "date")
    required String date,

    @JsonKey(name: "firstTime")
    required String firstTime,

    @JsonKey(name: "stateTask")
    required bool stateTask,

    @JsonKey(name: "dateJoined")
    required DateTime dateJoined,

  }) = _TaskResponseDTO;

  factory TaskResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$TaskResponseDTOFromJson(json);
}