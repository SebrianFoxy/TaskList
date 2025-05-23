part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.checkTelegramLink() = _CheckTelegramLink;

  const factory ProfileEvent.changeTelegramLink({
    bool? telegramLinked,
  }) = _ChangeTelegramLink;

  const factory ProfileEvent.unlinkTelegram() = _UnlinkTelegram;
}

