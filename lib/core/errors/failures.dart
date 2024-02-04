import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

class AuthServerFailure extends Failure {}

class NotAuthorizedFailure extends Failure {}

class BadCredentialsFailure extends Failure {}

class ServerFailure extends Failure {}

class UnknownFailure extends Failure {}
