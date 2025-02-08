import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:core';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_mobile/data/datasource/task/task_datasource.dart';
import 'package:task_manager_mobile/data/drift/drift_database.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:task_manager_mobile/data/dto_s/task/task_request/task_request_dto.dart';
import 'package:task_manager_mobile/presenter/login/bloc/login_bloc.dart';
import 'package:task_manager_mobile/service/get_it/service_locator.dart';

import '../../../data/secure_storage/secure_storage.dart';

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
    on<_SyncTask>(_syncTask);
    on<_SyncDelTask>(_syncDelTask);
    on<_SyncTaskFromServer>(_syncTaskFromServer);
  }

  String filter = 'Задачи на сегодня';

  _fetch(_Fetch event, Emitter<TaskListState> emit) async {
    emit(const TaskListState.loading());
    final checkAuth = getIt<LoginBloc>().state ==
        const LoginState.authenticated()
        ? true
        : false;
    try {
      add(TaskListEvent.filteredTasks(filter: filter));

      // Sync task and delete task from database
      final List<ConnectivityResult> connectivityResult = await (Connectivity()
          .checkConnectivity());
      if (!connectivityResult.contains(ConnectivityResult.none) && checkAuth) {
        add(const TaskListEvent.syncDelTask());
        add(const TaskListEvent.syncTask());
        add(const TaskListEvent.syncTaskFromServer());
      }
    } catch (e) {
      emit(TaskListState.error(error: e));
      rethrow;
    }
  }

  _createTask(_CreateTask event, Emitter<TaskListState> emit) async {
    final database = Database.instance;
    final checkAuth = getIt<LoginBloc>().state ==
        const LoginState.authenticated()
        ? true
        : false;
    final dio = Dio(
        BaseOptions(
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
        )
    )
      ..interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    try {
      final localTaskID = await database.into(database.tasks).insert(
          TasksCompanion.insert(
            task: event.descriptionTask,
            date: event.date,
            firstTime: event.firstTime,
            stateTask: true,
          )
      );
      add(TaskListEvent.filteredTasks(filter: filter));

      // Sync with database
      final List<ConnectivityResult> connectivityResult = await (Connectivity()
          .checkConnectivity());
      if (!connectivityResult.contains(ConnectivityResult.none) && checkAuth) {
        final token = await SecureStorage().readSecureData('accessToken');
        final TaskDatasource _taskDatasource = TaskDatasource(dio);
        final pushTask = await _taskDatasource.pushTask(
          'application/json',
          'Bearer $token',
          TaskRequestDTO(
            task: event.descriptionTask,
            date: event.date,
            firstTime: event.firstTime,
            stateTask: true,
          ).toJson(),
        );
        await database.syncTask(localTaskID);
        await database.addServerId(localTaskID, pushTask.serverID);
      }
    } catch (e) {
      emit(TaskListState.error(error: e));
      add(TaskListEvent.filteredTasks(filter: filter));
    }
  }

  _deleteTask(_DeleteTask event, Emitter<TaskListState> emit) async {
    final database = Database.instance;
    try {
      await database.deleteOfMarkTask(event.id);
      add(const TaskListEvent.fetch());
    } catch (e) {
      emit(TaskListState.error(error: e));
      add(const TaskListEvent.fetch());
    }
  }

  _searchTask(_SearchTask event, Emitter<TaskListState> emit) async {
    try {
      if (event.query!.isNotEmpty) {
        List<Task> tasks = state.tasks.cast<Task>();
        List<Task> queryTask = tasks.where((t) =>
            t.task.contains(event.query.toString())).toList();
        emit(TaskListState.successLoading(tasks: queryTask));
      }
      else {
        add(TaskListEvent.filteredTasks(filter: filter));
      }
    } catch (e) {
      emit(TaskListState.error(error: e));
      add(TaskListEvent.filteredTasks(filter: filter));
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
    }
  }

  _changeStateTask(_ChangeStateTask event, Emitter<TaskListState> emit) async {
    final database = Database.instance;
    try {
      await database.toggleTaskState(event.id);
      add(TaskListEvent.filteredTasks(filter: filter));
    } catch (e) {
      emit(TaskListState.error(error: e));
      add(TaskListEvent.filteredTasks(filter: filter));
    }
  }

  _syncTask(_SyncTask event, Emitter<TaskListState> emit) async {
    final database = Database.instance;
    final dio = Dio(
        BaseOptions(
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
        )
    )
      ..interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    try {
      final token = await SecureStorage().readSecureData('accessToken');
      final TaskDatasource _taskDatasource = TaskDatasource(dio);
      final notSyncTask = await database.getTasksOnPushSync();
      for (final task in notSyncTask) {
        final pushTask = await _taskDatasource.pushTask(
          'application/json',
          'Bearer $token',
          TaskRequestDTO(
            task: task.task,
            date: task.date,
            firstTime: task.firstTime,
            stateTask: task.stateTask,
          ).toJson(),
        );
        await database.syncTask(task.id);
        await database.addServerId(task.id, pushTask.serverID);
      }
    } on DioException catch (error) {
      print(error);
    }
  }

  _syncDelTask(_SyncDelTask event, Emitter<TaskListState> emit) async {
    final database = Database.instance;
    final dio = Dio(
        BaseOptions(
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
        )
    )
      ..interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    try {
      final token = await SecureStorage().readSecureData('accessToken');
      final TaskDatasource _taskDatasource = TaskDatasource(dio);
      final notSyncDelTask = await database.getTasksOnDeleteSync();
      for (final task in notSyncDelTask) {
        if (task.serverId != null) {
          await _taskDatasource.deleteTask(
            'application/json',
            'Bearer $token',
            '${task.serverId}'
          );
          await database.deleteTaskById(task.id);
        }
        else{
          await database.deleteTaskById(task.id);
        }
      }
    } on DioException catch (error) {
      print(error);
    }
  }

  _syncTaskFromServer(_SyncTaskFromServer event, Emitter<TaskListState> emit) async {
    final database = Database.instance;
    final dio = Dio(
        BaseOptions(
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
        )
    )
      ..interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    try{
      final token = await SecureStorage().readSecureData('accessToken');
      final TaskDatasource _taskDatasource = TaskDatasource(dio);
      final getAllTask = await _taskDatasource.getAllTask(
        'application/json',
        'Bearer $token',
      );
      for (final task in getAllTask) {
        final exists = await database.getTaskByServerId(task.serverID);
        if (exists == null) {
          final localTaskID = await database.into(database.tasks).insert(
              TasksCompanion.insert(
                task: task.task,
                date: task.date,
                firstTime: task.firstTime,
                stateTask: task.stateTask,
              ),
          );
          await database.syncTask(localTaskID);
          await database.addServerId(localTaskID, task.serverID);
        }
      }
    } on DioException catch (error) {
      print(error);
    }
  }
}