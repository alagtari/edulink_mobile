part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {
  const AuthEvent();
}

class LoginEvent extends AuthEvent {
  final AuthRequestModel request;

  const LoginEvent({required this.request});
}

class LogoutEvent extends AuthEvent {}
