part of 'login_bloc.dart';

@immutable
abstract class LoginState extends Equatable{
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginFaliure extends LoginState {
  final String error;

  const LoginFaliure({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => ' LoginFaliure { error: $error }';
}

class LoginInitial extends LoginState {}

// TODO: I have to start over the login_bloc, it is empty