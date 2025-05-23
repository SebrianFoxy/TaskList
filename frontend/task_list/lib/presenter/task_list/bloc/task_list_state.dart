part of 'task_list_bloc.dart';

@freezed
class TaskListState with _$TaskListState{
  const TaskListState._();

  const factory TaskListState.idle({
    @Default(<Task>[]) List<dynamic> tasks,
  }) = _TaskListStateIdle;

  const factory TaskListState.successLoading({
    required List<dynamic> tasks,
  }) = _TaskListStateSuccessLoading;

  const factory TaskListState.loading({
    @Default(<Task>[]) List<dynamic> tasks,
  }) = _TaskListStateLoading;

  const factory TaskListState.error({
    @Default('') String error,
  }) = _TaskListStateError;

  List<dynamic> get tasks => when(
    idle: (tasks) => tasks,
    successLoading: (tasks) => tasks,
    loading: (tasks) => tasks,
    error: (_) => <Task>[],
  );
}
