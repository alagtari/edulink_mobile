import 'package:edulink_mobile/features/auth/login/data/models/user_model.dart';
import 'package:equatable/equatable.dart';

class AuthResponseEntity extends Equatable {
  final UserModel user;
  final String token;

  const AuthResponseEntity({
    required this.user,
    required this.token,
  });

  @override
  List<Object> get props => [];
}
