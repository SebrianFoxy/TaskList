part of 'calendar_bloc.dart';

@freezed
class CalendarListState with _$CalendarListState{
  const CalendarListState._();

  const factory CalendarListState.idle({
    @Default(<Task>[]) List<dynamic> tasks,
  }) = _CalendarListStateIdle;

  const factory CalendarListState.successLoading({
    required List<dynamic> tasks,
  }) = _CalendarListStateSuccessLoading;

  const factory CalendarListState.loading({
    @Default(<Task>[]) List<dynamic> tasks,
  }) = _CalendarListStateLoading;

  const factory CalendarListState.error({
    @Default(<Task>[]) List<dynamic> tasks,
    Object? error,
  }) = _CalendarListStateError;
}

