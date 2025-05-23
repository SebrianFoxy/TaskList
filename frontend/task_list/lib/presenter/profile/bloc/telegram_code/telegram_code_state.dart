part of 'telegram_code_bloc.dart';

@freezed
class TelegramCodeState with _$TelegramCodeState {
  const factory TelegramCodeState.active({
    @Default(false) isVerified,
  }) = TelegramCodeButtonActive;

  const factory TelegramCodeState.inactive({
    required int remainingTime,
    required String telegramCode,
  }) = _TelegramCodeButtonInactive;
}