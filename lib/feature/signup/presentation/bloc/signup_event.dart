part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent extends Equatable {
  const SignupEvent();

  @override
  List<Object> get props => [];
}

class SignupRequested extends SignupEvent {
  final Map<String, String> formData;

  const SignupRequested(this.formData);

  @override
  List<Object> get props => [formData];
}
