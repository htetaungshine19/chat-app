import 'package:chatui/src/states/auth_state.dart';
import 'package:chatui/src/states/settings_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authStateNotifierProvider =
    StateNotifierProvider<AuthStateNotifier, AuthState>((ref) {
  return AuthStateNotifier();
});
final settingNotifierProvider = ChangeNotifierProvider((ref) {
  return Settings();
});
