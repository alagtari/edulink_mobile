import 'dart:async';
import 'dart:developer';
import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:edulink_mobile/core/errors/failures.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/core/routes/app_router.dart';
import 'package:edulink_mobile/core/routes/app_router.gr.dart';
import 'package:edulink_mobile/main.dart';
import 'package:flutter/material.dart';
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
    // final _innerRouterKey = GlobalKey<AutoRouterState>();

    // if (context == null) return;
    try {
      if (err.response?.statusCode == 403) {
        sl<AppRouter>().replace(const Login());
      }
    } catch (e) {
      rethrow;
    }
  }
}
