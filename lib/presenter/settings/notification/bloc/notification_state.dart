part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    required bool notification,
    required bool alarmNotification,
  }) = _NotificationState;

  factory NotificationState.initial() {
    return const NotificationState(
      notification: false,
      alarmNotification: false,
    );
  }
}
