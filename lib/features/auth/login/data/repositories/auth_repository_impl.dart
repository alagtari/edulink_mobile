import 'package:dartz/dartz.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/features/auth/login/data/data_sources/remote_data_source.dart';
import 'package:edulink_mobile/features/auth/login/data/models/auth_response_model.dart';
import 'package:edulink_mobile/features/auth/login/data/models/auth_request_model.dart';
import 'package:edulink_mobile/features/auth/login/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthOnlineDataSource dataSource;

  AuthRepositoryImpl({
    required this.dataSource,
  });

  @override
  Future<Either<Failure, AuthResponseModel>> login({
    required AuthRequestModel user,
  }) async {
    try {
      final res = await dataSource.login(user);
      return right(res);
    } catch (_) {
      return left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> logOut() {
    throw UnimplementedError();
  }
}
