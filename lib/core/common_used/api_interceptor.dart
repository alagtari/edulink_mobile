import 'dart:async';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'app_prefs.dart';

class ApiInterceptor extends Interceptor {
  ApiInterceptor(this.prefs);

  final AppPrefs prefs;

  @override
  Future<dynamic> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = prefs.getToken();
    if (token != null) {
      options.headers.addAll({"Authorization": "Bearer $token"});
    }

    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // final context = navigatorKey.currentState?.context;
    // if (context == null) return;
    try {
      // if (err.response?.statusCode == 401) {
      //   throw NotAuthorizedFailure();
      // }
      return;
    } catch (e) {
      rethrow;
    }
  }
}
