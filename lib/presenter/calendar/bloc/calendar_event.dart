part of 'calendar_bloc.dart';

@freezed
class CalendarListEvent with _$CalendarListEvent {
  const factory CalendarListEvent.fetch({
    String? taskThisDate,
  }) = _Fetch;

  const factory CalendarListEvent.changeStateTask({
    required int id,
    String? taskThisDate,
    bool? stateTask,
  }) = _ChangeStateTask;

  const factory CalendarListEvent.deleteTask({
    required int id,
  }) = _DeleteTask;
}
