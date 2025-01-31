part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState.initial() = _RegistrationStateInitial;

  const factory RegistrationState.loading() = _RegistrationStateLoading;

  const factory RegistrationState.failure(String message) = _RegistrationStateFailure;

  const factory RegistrationState.success() = _RegistrationStateSuccess;
}
