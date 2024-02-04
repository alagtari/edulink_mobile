import 'package:dartz/dartz.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/features/auth/login/data/models/auth_response_model.dart';
import 'package:edulink_mobile/features/auth/login/data/models/auth_request_model.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthResponseModel>> login({
    required AuthRequestModel user,
  });
  Future<Either<Failure, Unit>> logOut();
}
