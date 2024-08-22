part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.loading() = _Loading;

  const factory NotificationEvent.changeNotification({
    required bool notification,
  }) = _ChangeNotification;

  const factory NotificationEvent.changeAlarmNotification() = _ChangeAlarmNotification;

}
