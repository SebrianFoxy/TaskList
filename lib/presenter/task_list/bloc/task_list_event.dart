part of 'task_list_bloc.dart';

@freezed
class TaskListEvent with _$TaskListEvent {
  const factory TaskListEvent.fetch() = _Fetch;

  const factory TaskListEvent.createTask({
    required String descriptionTask,
    required String date,
    required String firstTime,
  }) = _CreateTask;

  const factory TaskListEvent.deleteTask({
    required int id,
  }) = _DeleteTask;

  const factory TaskListEvent.searchTask({
    String? query,
  }) = _SearchTask;

  const factory TaskListEvent.filteredTasks({
    String? filter,
  }) = _FilteredTasks;

  const factory TaskListEvent.changeStateTask({
    required int id,
    bool? stateTask,
  }) = _ChangeStateTask;
}
