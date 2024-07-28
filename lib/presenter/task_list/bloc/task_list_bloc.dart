import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'dart:core';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_mobile/data/drift/drift_database.dart';

part 'task_list_event.dart';
part 'task_list_state.dart';
part 'task_list_bloc.freezed.dart';

class TaskListBloc extends Bloc<TaskListEvent, TaskListState> {
  TaskListBloc({
    TaskListState initialState = const TaskListState.idle(),
  }) : super(initialState) {
    on<_Fetch>(_fetch);
    on<_CreateTask>(_createTask);
    on<_DeleteTask>(_deleteTask);
    on<_SearchTask>(_searchTask);
    on<_FilteredTasks>(_filteredTasks);
    on<_ChangeStateTask>(_changeStateTask);
  }

  String filter = 'Задачи на сегодня';

  _fetch(_Fetch event, Emitter<TaskListState> emit) async {
    emit(const TaskListState.loading());
    final database = Database.instance;
    try{
      List<Task> getTasks = await database.taskOfDay();
      emit(TaskListState.successLoading(tasks: getTasks));
    } catch (e) {
      emit(TaskListState.error(error: e));
      rethrow;
    }
  }

  _createTask(_CreateTask event, Emitter<TaskListState> emit) async {
    final database = Database.instance;
    try{
      await database.into(database.tasks).insert(
          TasksCompanion.insert(
              task: event.descriptionTask,
              date: event.date,
              firstTime: event.firstTime,
              secondTime: event.secondTime,
              stateTask: true,
          )
      );
      add(TaskListEvent.filteredTasks(filter: filter));
    } catch (e) {
      emit(TaskListState.error(error: e));
      rethrow;
    }
  }

  _deleteTask(_DeleteTask event, Emitter<TaskListState> emit) async {
    final database = Database.instance;
    try {
      await database.deleteTaskById(event.id);
      add(TaskListEvent.filteredTasks(filter: filter));
    } catch (e) {
      emit(TaskListState.error(error: e));
      rethrow;
    }
  }

  _searchTask(_SearchTask event, Emitter<TaskListState> emit) async {
    try {
      if (event.query!.isNotEmpty) {
        List<Task> tasks = state.tasks.cast<Task>();
        List<Task> queryTask = tasks.where((t) => t.task.contains(event.query.toString())).toList();
        emit(TaskListState.successLoading(tasks: queryTask));
      }
      else {
        add(TaskListEvent.filteredTasks(filter: filter));
      }
    } catch (e) {
      emit(TaskListState.error(error: e));
      rethrow;
    }
  }

  _filteredTasks(_FilteredTasks event, Emitter<TaskListState> emit) async {
    final database = Database.instance;
    filter = event.filter.toString();
    try {
      if (filter == 'Все задачи') {
        List<Task> getTasks = await database.allTasks();
        emit(TaskListState.successLoading(tasks: getTasks));
      }
      else {
        List<Task> getTasks = await database.taskOfDay();
        emit(TaskListState.successLoading(tasks: getTasks));
      }
    } catch (e) {
      emit(TaskListState.error(error: e));
      rethrow;
    }
  }

  _changeStateTask(_ChangeStateTask event, Emitter<TaskListState> emit) async {
    final database = Database.instance;
    try {
      await database.toggleTaskState(event.id);
      add(TaskListEvent.filteredTasks(filter: filter));
    } catch (e) {
      emit(TaskListState.error(error: e));
      rethrow;
    }
  }
}
