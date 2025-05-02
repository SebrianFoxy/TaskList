import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_mobile/presenter/profile/bloc/profile/profile_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

import '../../../../data/datasource/telegram_code/telegram_code_datasource.dart';
import '../../../../data/secure_storage/secure_storage.dart';
import '../../../../service/get_it/service_locator.dart';
import '../../../../service/shared_preferences/cache_service.dart';

part 'telegram_code_event.dart';
part 'telegram_code_state.dart';
part 'telegram_code_bloc.freezed.dart';


class TelegramCodeBloc extends Bloc<TelegramCodeEvent, TelegramCodeState> {
  Timer? _timer;
  IO.Socket? _socket;

  TelegramCodeBloc() : super(const TelegramCodeState.active()) {
    on<_ButtonPressedEvent>(_buttonGetCode);
    on<_ButtonTimerTicked>(_onTimerTicked);
    on<_RedirectToTelegramBot>(_redirectToTelegramBot);
    on<_WebSocketMessageReceived>(_onWebSocketMessageReceived);
  }

  _redirectToTelegramBot(_RedirectToTelegramBot event, Emitter<TelegramCodeState> emit) async {
    try{
      const url = 'https://t.me/TaskListNotificationbot';
      final uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      }
    } on DioException catch (error) {
      debugPrint('$error');
    }
  }

  _buttonGetCode(_ButtonPressedEvent event, Emitter<TelegramCodeState> emit) async {
    try{
      final dio = Dio(
          BaseOptions(
            connectTimeout: const Duration(seconds: 5),
            receiveTimeout: const Duration(seconds: 3),
          )
      )..interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
      final token = await SecureStorage().readSecureData('accessToken');
      final TelegramCodeDatasource _telegramCodeSource = TelegramCodeDatasource(dio);
      final responseTelegramCode = await _telegramCodeSource.generateTelegramCode(
        'application/json',
        'Bearer $token',
      );

      _connectWebSocket(responseTelegramCode.telegramCode);

      emit(TelegramCodeState.inactive(remainingTime: 300, telegramCode: responseTelegramCode.telegramCode));
      _startTimer();
    }on DioException catch (error) {
      debugPrint('$error');
    }
  }

  _onTimerTicked(_ButtonTimerTicked event, Emitter<TelegramCodeState> emit) async {
    try{
      if (state is _TelegramCodeButtonInactive) {
        final currentState = state as _TelegramCodeButtonInactive;
        final remainingTime = currentState.remainingTime - 1;

        if (remainingTime > 0) {
          emit(currentState.copyWith(remainingTime: remainingTime));
        } else {
          emit(const TelegramCodeState.active());
          _timer?.cancel();
          _socket?.disconnect();
        }
      }
    }on DioException catch (error) {
      debugPrint('$error');
    }
  }

  _onWebSocketMessageReceived(_WebSocketMessageReceived event, Emitter<TelegramCodeState> emit) async {
    if (state is _TelegramCodeButtonInactive) {
      emit(const TelegramCodeState.active(isVerified: true));
      _timer?.cancel();
      _socket?.disconnect();
    }
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      add(const TelegramCodeEvent.buttonTimerTicked());
    });
  }

  void _connectWebSocket(String telegramCode) {
    _socket?.disconnect();

    try {
      _socket = IO.io(
        'http://192.168.100.14:8000',
        IO.OptionBuilder()
            .setTransports(['websocket'])
            .enableAutoConnect()
            .setQuery({'code': telegramCode})
            .build(),
      );

      _socket!.onConnect((_) {
        debugPrint('Socket.IO connected');
        _socket!.emit('register_code', {'code': telegramCode});
      });

      _socket!.on('code_registered', (_) {
        debugPrint('Code registered successfully');
      });

      _socket!.on('code_verified', (_) {
        getIt<ProfileBloc>().add(const ProfileEvent.changeTelegramLink(telegramLinked: true));
        add(const TelegramCodeEvent.webSocketMessageReceived());
      });

      _socket!.on('code_invalid', (data) {
        debugPrint('Invalid code: ${data['message']}');
      });

      _socket!.onDisconnect((_) => debugPrint('Socket.IO disconnected'));
      _socket!.onError((err) => debugPrint('Socket.IO error: $err'));

      _socket!.connect();

    } catch (e) {
      debugPrint('Socket.IO connection error: $e');
    }
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    _socket?.disconnect();
    return super.close();
  }

}