import 'package:equatable/equatable.dart';

class AuthRequestEntity extends Equatable {
  final String code;
  final String password;

  const AuthRequestEntity({
    required this.code,
    required this.password,
  });

  @override
  List<Object> get props => [];
}
