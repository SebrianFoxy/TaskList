part of 'telegram_code_bloc.dart';

@freezed
class TelegramCodeEvent with _$TelegramCodeEvent {
  const factory TelegramCodeEvent.buttonPressed() = _ButtonPressedEvent;
  const factory TelegramCodeEvent.buttonTimerTicked() = _ButtonTimerTicked;
  const factory TelegramCodeEvent.redirectToTelegramBot() = _RedirectToTelegramBot;
  const factory TelegramCodeEvent.webSocketMessageReceived() = _WebSocketMessageReceived;
}