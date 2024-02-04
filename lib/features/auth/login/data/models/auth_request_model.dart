import 'dart:math';

import 'package:edulink_mobile/features/auth/login/domain/entities/auth_request_entity.dart';

class AuthRequestModel extends AuthRequestEntity {
  const AuthRequestModel({required super.code, required super.password});

  factory AuthRequestModel.fromJson(Map<String, dynamic> json) {
    return AuthRequestModel(
      code: json['code'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'password': password,
    };
  }
}
