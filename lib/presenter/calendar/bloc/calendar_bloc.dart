import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'dart:core';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_mobile/data/drift/drift_database.dart';

part 'calendar_event.dart';
part 'calendar_state.dart';
part 'calendar_bloc.freezed.dart';

class CalendarListBloc extends Bloc<CalendarListEvent, CalendarListState> {
  CalendarListBloc({
    CalendarListState initialState = const CalendarListState.idle(),
  }) : super(initialState) {
    on<_Fetch>(_fetch);
    on<_ChangeStateTask>(_changeStateTask);
    on<_DeleteTask>(_deleteTask);
  }

  String daySelect = DateTime.now().toString();

  _fetch(_Fetch event, Emitter<CalendarListState> emit) async {
    final database = Database.instance;
    try{
      if (event.taskThisDate == null) {
        List<Task> getTasks = await database.taskOfDay();
        emit(CalendarListState.successLoading(tasks: getTasks));
      }
      else {
        daySelect = event.taskThisDate.toString();
        List<Task> getTasks = await database.taskMyDay(event.taskThisDate);
        emit(CalendarListState.successLoading(tasks: getTasks));
      }
    } catch (e) {
      emit(CalendarListState.error(error: e));
      rethrow;
    }
  }

  _changeStateTask(_ChangeStateTask event, Emitter<CalendarListState> emit) async {
    final database = Database.instance;
    try {
      await database.toggleTaskState(event.id);
      add(CalendarListEvent.fetch(taskThisDate: daySelect.toString()));
    } catch (e) {
      emit(CalendarListState.error(error: e));
      rethrow;
    }
  }

  _deleteTask(_DeleteTask event, Emitter<CalendarListState> emit) async {
    final database = Database.instance;
    try {
      await database.deleteTaskById(event.id);
      add(CalendarListEvent.fetch(taskThisDate: daySelect.toString()));
    } catch (e) {
      emit(CalendarListState.error(error: e));
      rethrow;
    }
  }
}
