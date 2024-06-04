part of 'signup_bloc.dart';

@immutable
sealed class SignupState {}

final class SignupInitial extends SignupState {}

final class SignupSuccess extends SignupState {}

final class SignupFailure extends SignupState {
  final String error;

  SignupFailure(this.error);
}

final class SignupLoading extends SignupState {}
