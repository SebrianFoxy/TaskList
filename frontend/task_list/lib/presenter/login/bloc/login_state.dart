part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _LoginStateInitial;

  const factory LoginState.loading() = _LoginStateLoading;

  const factory LoginState.authenticated() = _LoginStateAuthenticated;

  const factory LoginState.failure(String message) = _LoginStateFailure;

  const factory LoginState.unauthenticated() = _LoginStateUnauthenticated;
}
