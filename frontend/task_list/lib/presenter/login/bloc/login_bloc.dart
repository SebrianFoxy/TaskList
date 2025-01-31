import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'dart:core';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';
import 'package:task_manager_mobile/data/dto_s/login/login_request/login_request_dto.dart';
import '../../../data/datasource/auth/auth_datasource.dart';
import '../../../data/secure_storage/secure_storage.dart';
import '../../../data/dio_error_handler/error_handler.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState.initial()) {
    on<_Login>(_login);
    on<_CheckAuth>(_checkAuth);
    on<_Logout>(_logout);
  }

  _login(_Login event, Emitter<LoginState> emit) async {
    try{
      emit(const LoginState.loading());
      final dio = Dio(
        BaseOptions(
            connectTimeout: const Duration(seconds: 5),
            receiveTimeout: const Duration(seconds: 3),
        )
      )..interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

      final AuthDatasource _authDatasource = AuthDatasource(dio);
      final userLogin = await _authDatasource.login(LoginRequestDTO(email: event.email, password: event.password).toJson());
      await SecureStorage().writeSecureData('refreshToken', userLogin.refreshToken);
      await SecureStorage().writeSecureData('accessToken', userLogin.accessToken);

      emit(const LoginState.authenticated());
    }on DioException catch(error){
      final errorMessage = ErrorHandler.handleDioError(error);
      emit(LoginState.failure(errorMessage));
      debugPrint('LoginError: $error');
      emit(const LoginState.unauthenticated());
    }
  }

  _checkAuth(_CheckAuth event, Emitter<LoginState> emit) async {
    try{
      emit(const LoginState.loading());
      final dio = Dio(
          BaseOptions(
            connectTimeout: const Duration(seconds: 5),
            receiveTimeout: const Duration(seconds: 3),
          )
      )..interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
      final AuthDatasource _authDatasource = AuthDatasource(dio);

      final token = await SecureStorage().readSecureData('refreshToken');
      if (token.isEmpty) {
        emit(const LoginState.unauthenticated());
      }
      else {
        final newToken = await _authDatasource.refreshToken(
            'application/json',
            'Bearer $token',
        );
        await SecureStorage().writeSecureData('refreshToken', newToken.refreshToken);
        await SecureStorage().writeSecureData('accessToken', newToken.accessToken);
        emit(const LoginState.authenticated());
      }
    }on DioException catch(error) {
      final errorMessage = ErrorHandler.handleDioError(error);
      emit(LoginState.failure(errorMessage));
      debugPrint('LoginError: $error');
      emit(const LoginState.unauthenticated());
    }
  }

  _logout(_Logout event, Emitter<LoginState> emit) async {
    try {
      await SecureStorage().deleteSecureData('refreshToken');
      await SecureStorage().deleteSecureData('accessToken');
      emit(const LoginState.unauthenticated());
    }on DioException catch(error){
      debugPrint('LoginError: $error');
      emit(const LoginState.unauthenticated());
    }
  }

}
