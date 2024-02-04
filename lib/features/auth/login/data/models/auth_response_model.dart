import 'package:edulink_mobile/features/auth/login/data/models/user_model.dart';
import 'package:edulink_mobile/features/auth/login/domain/entities/auth_response_entity.dart';

class AuthResponseModel extends AuthResponseEntity {
  const AuthResponseModel({
    required super.user,
    required super.token,
  });

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) {
    return AuthResponseModel(
      user: UserModel.fromJson(json['payload']),
      token: json['access_token'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'user': user,
      'token': token,
    };
  }
}
