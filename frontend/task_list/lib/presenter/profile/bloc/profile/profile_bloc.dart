import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_mobile/data/datasource/telegram_code/telegram_code_datasource.dart';
import 'package:task_manager_mobile/data/datasource/user/user_datasource.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../data/dio_error_handler/error_handler.dart';
import '../../../../data/secure_storage/secure_storage.dart';
import '../../../../service/get_it/service_locator.dart';
import '../../../../service/shared_preferences/cache_service.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(const ProfileState.initial()) {
    on<_CheckTelegramLink>(_checkTelegramLink);
    on<_ChangeTelegramLink>(_changeTelegramLink);
    on<_UnlinkTelegram>(_unlinkTelegram);
  }

  _checkTelegramLink(_CheckTelegramLink event, Emitter<ProfileState> emit) async {
    final CacheService cacheService = getIt<CacheService>();
    final getTelegramNotification = await cacheService.getBoolValue('telegram_notification');
    try{
      if (getTelegramNotification == null) {
        final dio = Dio(
            BaseOptions(
              connectTimeout: const Duration(seconds: 7),
              receiveTimeout: const Duration(seconds: 3),
            )
        )..interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
        final token = await SecureStorage().readSecureData('accessToken');
        final UserDatasource _userDatasource = UserDatasource(dio);
        final responseTelegram = await _userDatasource.checkTelegramLink(
          'application/json',
          'Bearer $token',
        );

        if (responseTelegram.id != null) {
          await cacheService.setBoolValue('telegram_notification', true);
          emit(const ProfileState.successLoading(telegramLinked: true));
        }
        else {
          await cacheService.setBoolValue('telegram_notification', false);
          emit(const ProfileState.successLoading(telegramLinked: false));
        }
      }
      else {
        emit(ProfileState.successLoading(telegramLinked: getTelegramNotification, vkLinked: true));
      }
    } on DioException catch (e) {
      final error = ErrorHandler.handleDioError(e);
      emit(ProfileState.error(error: error));
      if (getTelegramNotification == null) {
        emit(const ProfileState.successLoading(telegramLinked: false));
      }
      else {
        emit(ProfileState.successLoading(telegramLinked: getTelegramNotification!));
      }
    }
  }

  _changeTelegramLink(_ChangeTelegramLink event, Emitter<ProfileState> emit) async {
    final CacheService cacheService = getIt<CacheService>();
    await cacheService.setBoolValue('telegram_notification', event.telegramLinked!);
    emit(ProfileState.successLoading(telegramLinked: event.telegramLinked!));
  }

  _unlinkTelegram(_UnlinkTelegram event, Emitter<ProfileState> emit) async {
    final CacheService cacheService = getIt<CacheService>();
    final getTelegramNotification = await cacheService.getBoolValue('telegram_notification');
    try{
      final dio = Dio(
          BaseOptions(
            connectTimeout: const Duration(seconds: 5),
            receiveTimeout: const Duration(seconds: 3),
          )
      )..interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
      final token = await SecureStorage().readSecureData('accessToken');
      final UserDatasource _userDatasource = UserDatasource(dio);
      await _userDatasource.unlinkTelegram(
        'application/json',
        'Bearer $token',
      );
      await cacheService.setBoolValue('telegram_notification', false);
      emit(const ProfileState.successLoading(telegramLinked: false));
    }on DioException catch (e) {
      final error = ErrorHandler.handleDioError(e);
      if (error == 'User not link to telegram bot'){
        await cacheService.setBoolValue('telegram_notification', false);
        emit(ProfileState.error(error: error));
        emit(const ProfileState.successLoading(telegramLinked: false));
      }
      else {
        emit(ProfileState.error(error: error));
        emit(ProfileState.successLoading(telegramLinked: getTelegramNotification!));
      }
    }
  }
}