import 'package:dio/dio.dart';
import 'package:edulink_mobile/core/common_used/response_wrapper.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/features/auth/login/data/models/auth_response_model.dart';
import 'package:edulink_mobile/features/auth/login/data/models/auth_request_model.dart';

abstract class AuthOnlineDataSource {
  Future<AuthResponseModel> login(
    AuthRequestModel request,
  );
}

class AuthOnlineDataSourceImpl implements AuthOnlineDataSource {
  @override
  Future<AuthResponseModel> login(
    AuthRequestModel request,
  ) async {
    final res = await sl<Dio>().post(
      "/login",
      data: request.toJson(),
    );

    if (res.statusCode == 200) {
      try {
        if (res.data["role"] == 'Parents') {
          return AuthResponseModel.fromJson(res.data);
        } else {
          throw NotAuthorizedFailure();
        }
      } catch (_) {
        rethrow;
      }
    }
    throw ServerFailure();
  }
}
