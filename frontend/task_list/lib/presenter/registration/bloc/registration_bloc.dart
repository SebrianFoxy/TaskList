import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_mobile/data/dto_s/registration/registration_request/registration_request_dto.dart';

import '../../../data/datasource/auth/auth_datasource.dart';
import '../../../data/dio_error_handler/error_handler.dart';

part 'registration_event.dart';
part 'registration_state.dart';
part 'registration_bloc.freezed.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc() : super(const _RegistrationStateInitial()) {
    on<_Registration>(_registration);
  }

  _registration(_Registration event, Emitter<RegistrationState> emit) async {
    try{
      emit(const RegistrationState.loading());
      final dio = Dio(
          BaseOptions(
            connectTimeout: const Duration(seconds: 5),
            receiveTimeout: const Duration(seconds: 3),
          )
      )..interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

      final AuthDatasource _authDatasource = AuthDatasource(dio);
      final userRegistration = await _authDatasource.registration(RegistrationRequestDTO(email: event.email, password: event.password).toJson());
      debugPrint(userRegistration.message);
      emit(const RegistrationState.success());
      emit(const RegistrationState.initial());
    }on DioException catch(error){
      final errorMessage = ErrorHandler.handleDioError(error);
      emit(RegistrationState.failure(errorMessage));
      debugPrint('LoginError: $error');
      emit(const RegistrationState.initial());
    }
  }
}
