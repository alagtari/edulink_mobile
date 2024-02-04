import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:edulink_mobile/core/common_used/app_prefs.dart';
import 'package:edulink_mobile/core/injection/injection_container.dart';
import 'package:edulink_mobile/features/auth/login/data/models/auth_response_model.dart';
import 'package:edulink_mobile/features/auth/login/data/models/auth_request_model.dart';
import 'package:edulink_mobile/features/auth/login/domain/repositories/auth_repository.dart';
import 'package:flutter/foundation.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final _prefs = sl<AppPrefs>();
  final _repo = sl<AuthRepository>();

  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {});
    on<LoginEvent>(
      (event, emit) async {
        emit(LoginLoading());
        final Completer<AuthState> completer = Completer<AuthState>();
        final res = await _repo.login(user: event.request);
        res.fold(
          (l) => completer.complete(LoginFailed()),
          (r) async {
            completer.complete((LoginSuccess(response: r)));
          },
        );
        await completer.future.then((value) async {
          if (value is LoginSuccess) {
            await _cacheToPrefs(value.response);
          }
          emit(value);
        });
      },
    );
  }
  Future<void> _cacheToPrefs(AuthResponseModel r) async {
    await _prefs.saveToken(r.token);
    await _prefs.saveCalsseId(r.user.classeId);
    await _prefs.saveOrganizationId(r.user.organisationId);
    await _prefs.saveId(r.user.id);
    await _prefs.savePrenom(r.user.prenom);
  }
}
