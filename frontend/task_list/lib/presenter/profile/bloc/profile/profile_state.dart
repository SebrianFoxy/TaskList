part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState{
  const factory ProfileState.initial() = _ProfileStateInitial;

  const factory ProfileState.loading() = _ProfileStateLoading;

  const factory ProfileState.successLoading({
    @Default(false) bool telegramLinked,
    @Default(false) bool vkLinked,
  }) = _ProfileStateSuccessLoading;

  const factory ProfileState.error({
    @Default('') String error,
  }) = _ProfileStateError;
}
