import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_request_dto.freezed.dart';
part 'task_request_dto.g.dart';

@freezed
class TaskRequestDTO with _$TaskRequestDTO {
  const factory TaskRequestDTO ({
    @JsonKey(name: "task")
    required String task,

    @JsonKey(name: "date")
    required String date,

    @JsonKey(name: "firstTime")
    required String firstTime,

    @JsonKey(name: "stateTask")
    required bool stateTask,

  }) = _TaskRequestDTO;

  factory TaskRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$TaskRequestDTOFromJson(json);
}