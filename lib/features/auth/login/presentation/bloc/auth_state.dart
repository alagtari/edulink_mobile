part of 'auth_bloc.dart';

@immutable
abstract class AuthState {
  const AuthState();
}

class AuthInitial extends AuthState {}

class LoginLoading extends AuthState {}

class LoginSuccess extends AuthState {
  final AuthResponseModel response;

  const LoginSuccess({
    required this.response,
  });
}

class LoginFailed extends AuthState {}
