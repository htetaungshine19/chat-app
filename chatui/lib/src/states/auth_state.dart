import 'dart:async';


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:chatui/src/models/auth.dart';
import 'package:chatui/src/services/api/auth_api.dart' as api;
import 'package:chatui/src/services/databases/auth_database_api.dart' as db;
import 'package:flutter_riverpod/flutter_riverpod.dart';
part 'auth_state.freezed.dart';

enum page { login, register, forgetPassword }

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.loginState([String? justRegistered]) = _LoginState;
  const factory AuthState.registerState() = _RegisterState;
  const factory AuthState.loadingState() = _LoadingState;
  const factory AuthState.forgetPasswordState() = _ForgetPasswordState;
  const factory AuthState.authSuccessfulState(Auth auth) = _AuthSuccessfulState;
  const factory AuthState.authErrorState(String message) = _AuthErrorState;
}

class AuthStateNotifier extends StateNotifier<AuthState> {
  AuthStateNotifier() : super(const AuthState.loginState()) {
    init();
  }
  void init() {
    state = const AuthState.loadingState();
    getFromDatabase();
  }

  Future<void> getFromDatabase() async {
    try {
      Auth auth = await db.getToken();
      state = AuthState.authSuccessfulState(auth);
    } catch (_) {
      state = const AuthState.loginState();
    }
  }

  Future<void> login(String username, String password) async {
    try {
      state = const AuthState.loadingState();
      String token = await api.login(username, password);
      Auth auth = Auth(token: token);
      await db.setToken(auth);
      state = AuthState.authSuccessfulState(auth);
    } on TimeoutException {
      state = const AuthState.authErrorState("Network Timeout!");
    } catch (e) {
      state = const AuthState.authErrorState(
          "Something went wrong.Please Try Again");
    }
  }

  Future<void> register(
      String email, String username, String password1, String password2) async {
    state = const AuthState.loadingState();
    Future.delayed(const Duration(seconds: 3)).then((_) {
      state = const AuthState.loginState('successfully');
    });
  }

  Future<void> forgetPassword(String email) async {

  }


  void switchPage(page p) {
    switch (p) {
      case page.login:
        {
          state = const AuthState.loginState();
          break;
        }
      case page.register:
        {
          state = const AuthState.registerState();
          break;
        }
      case page.forgetPassword:
        {
          state = const AuthState.forgetPasswordState();
          break;
        }
    }
  }
}
