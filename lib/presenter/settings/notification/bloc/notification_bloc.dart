import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:task_manager_mobile/data/notification/notification_service/local_notification.dart';
import 'package:task_manager_mobile/presenter/settings/repositories/settings_repositories_interface.dart';

part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc({
    required SettingsRepositoryInterface settingsRepository
  }): _settingsRepository = settingsRepository, super(NotificationState.initial()) {
    _checkNotification();
    // on<_GetNotification>(_getNotification);
    on<_ChangeNotification>(_changeNotification);
  }

  final SettingsRepositoryInterface _settingsRepository;

  // _getNotification(_GetNotification event, Emitter<NotificationState> emit) async {
  //   try{
  //     final statusNotification = await Permission.notification.status.isGranted;
  //     final statusAlarmNotification = await Permission.scheduleExactAlarm.status.isGranted;
  //     emit(state.copyWith(notification: statusNotification, alarmNotification: statusAlarmNotification));
  //   } catch (e) {
  //     log(e.toString());
  //   }
  // }

  _changeNotification(_ChangeNotification event, Emitter<NotificationState> emit) async {
    try{
      NotificationService().requestPermissions();
      emit(state.copyWith(notification: event.notification));
    }catch (e) {
      log(e.toString());
    }
  }

  void _checkNotification() async {
    try{
      final onNotification = await Permission.notification.status.isGranted;
      final notification = _settingsRepository.isNotification() ? onNotification : onNotification;
      emit(state.copyWith(notification: notification));
    } catch(e){
      log(e.toString());
    }
  }
}
