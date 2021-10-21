// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _LoginState loginState([String? justRegistered]) {
    return _LoginState(
      justRegistered,
    );
  }

  _RegisterState registerState() {
    return const _RegisterState();
  }

  _LoadingState loadingState() {
    return const _LoadingState();
  }

  _ForgetPasswordState forgetPasswordState() {
    return const _ForgetPasswordState();
  }

  _AuthSuccessfulState authSuccessfulState(Auth auth) {
    return _AuthSuccessfulState(
      auth,
    );
  }

  _AuthErrorState authErrorState(String message) {
    return _AuthErrorState(
      message,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? justRegistered) loginState,
    required TResult Function() registerState,
    required TResult Function() loadingState,
    required TResult Function() forgetPasswordState,
    required TResult Function(Auth auth) authSuccessfulState,
    required TResult Function(String message) authErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? justRegistered)? loginState,
    TResult Function()? registerState,
    TResult Function()? loadingState,
    TResult Function()? forgetPasswordState,
    TResult Function(Auth auth)? authSuccessfulState,
    TResult Function(String message)? authErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? justRegistered)? loginState,
    TResult Function()? registerState,
    TResult Function()? loadingState,
    TResult Function()? forgetPasswordState,
    TResult Function(Auth auth)? authSuccessfulState,
    TResult Function(String message)? authErrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginState value) loginState,
    required TResult Function(_RegisterState value) registerState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ForgetPasswordState value) forgetPasswordState,
    required TResult Function(_AuthSuccessfulState value) authSuccessfulState,
    required TResult Function(_AuthErrorState value) authErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginState value)? loginState,
    TResult Function(_RegisterState value)? registerState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ForgetPasswordState value)? forgetPasswordState,
    TResult Function(_AuthSuccessfulState value)? authSuccessfulState,
    TResult Function(_AuthErrorState value)? authErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginState value)? loginState,
    TResult Function(_RegisterState value)? registerState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ForgetPasswordState value)? forgetPasswordState,
    TResult Function(_AuthSuccessfulState value)? authSuccessfulState,
    TResult Function(_AuthErrorState value)? authErrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  $Res call({String? justRegistered});
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object? justRegistered = freezed,
  }) {
    return _then(_LoginState(
      justRegistered == freezed
          ? _value.justRegistered
          : justRegistered // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState([this.justRegistered]);

  @override
  final String? justRegistered;

  @override
  String toString() {
    return 'AuthState.loginState(justRegistered: $justRegistered)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginState &&
            (identical(other.justRegistered, justRegistered) ||
                const DeepCollectionEquality()
                    .equals(other.justRegistered, justRegistered)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(justRegistered);

  @JsonKey(ignore: true)
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? justRegistered) loginState,
    required TResult Function() registerState,
    required TResult Function() loadingState,
    required TResult Function() forgetPasswordState,
    required TResult Function(Auth auth) authSuccessfulState,
    required TResult Function(String message) authErrorState,
  }) {
    return loginState(justRegistered);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? justRegistered)? loginState,
    TResult Function()? registerState,
    TResult Function()? loadingState,
    TResult Function()? forgetPasswordState,
    TResult Function(Auth auth)? authSuccessfulState,
    TResult Function(String message)? authErrorState,
  }) {
    return loginState?.call(justRegistered);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? justRegistered)? loginState,
    TResult Function()? registerState,
    TResult Function()? loadingState,
    TResult Function()? forgetPasswordState,
    TResult Function(Auth auth)? authSuccessfulState,
    TResult Function(String message)? authErrorState,
    required TResult orElse(),
  }) {
    if (loginState != null) {
      return loginState(justRegistered);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginState value) loginState,
    required TResult Function(_RegisterState value) registerState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ForgetPasswordState value) forgetPasswordState,
    required TResult Function(_AuthSuccessfulState value) authSuccessfulState,
    required TResult Function(_AuthErrorState value) authErrorState,
  }) {
    return loginState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginState value)? loginState,
    TResult Function(_RegisterState value)? registerState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ForgetPasswordState value)? forgetPasswordState,
    TResult Function(_AuthSuccessfulState value)? authSuccessfulState,
    TResult Function(_AuthErrorState value)? authErrorState,
  }) {
    return loginState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginState value)? loginState,
    TResult Function(_RegisterState value)? registerState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ForgetPasswordState value)? forgetPasswordState,
    TResult Function(_AuthSuccessfulState value)? authSuccessfulState,
    TResult Function(_AuthErrorState value)? authErrorState,
    required TResult orElse(),
  }) {
    if (loginState != null) {
      return loginState(this);
    }
    return orElse();
  }
}

abstract class _LoginState implements AuthState {
  const factory _LoginState([String? justRegistered]) = _$_LoginState;

  String? get justRegistered => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(
          _RegisterState value, $Res Function(_RegisterState) then) =
      __$RegisterStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(
      _RegisterState _value, $Res Function(_RegisterState) _then)
      : super(_value, (v) => _then(v as _RegisterState));

  @override
  _RegisterState get _value => super._value as _RegisterState;
}

/// @nodoc

class _$_RegisterState implements _RegisterState {
  const _$_RegisterState();

  @override
  String toString() {
    return 'AuthState.registerState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RegisterState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? justRegistered) loginState,
    required TResult Function() registerState,
    required TResult Function() loadingState,
    required TResult Function() forgetPasswordState,
    required TResult Function(Auth auth) authSuccessfulState,
    required TResult Function(String message) authErrorState,
  }) {
    return registerState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? justRegistered)? loginState,
    TResult Function()? registerState,
    TResult Function()? loadingState,
    TResult Function()? forgetPasswordState,
    TResult Function(Auth auth)? authSuccessfulState,
    TResult Function(String message)? authErrorState,
  }) {
    return registerState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? justRegistered)? loginState,
    TResult Function()? registerState,
    TResult Function()? loadingState,
    TResult Function()? forgetPasswordState,
    TResult Function(Auth auth)? authSuccessfulState,
    TResult Function(String message)? authErrorState,
    required TResult orElse(),
  }) {
    if (registerState != null) {
      return registerState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginState value) loginState,
    required TResult Function(_RegisterState value) registerState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ForgetPasswordState value) forgetPasswordState,
    required TResult Function(_AuthSuccessfulState value) authSuccessfulState,
    required TResult Function(_AuthErrorState value) authErrorState,
  }) {
    return registerState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginState value)? loginState,
    TResult Function(_RegisterState value)? registerState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ForgetPasswordState value)? forgetPasswordState,
    TResult Function(_AuthSuccessfulState value)? authSuccessfulState,
    TResult Function(_AuthErrorState value)? authErrorState,
  }) {
    return registerState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginState value)? loginState,
    TResult Function(_RegisterState value)? registerState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ForgetPasswordState value)? forgetPasswordState,
    TResult Function(_AuthSuccessfulState value)? authSuccessfulState,
    TResult Function(_AuthErrorState value)? authErrorState,
    required TResult orElse(),
  }) {
    if (registerState != null) {
      return registerState(this);
    }
    return orElse();
  }
}

abstract class _RegisterState implements AuthState {
  const factory _RegisterState() = _$_RegisterState;
}

/// @nodoc
abstract class _$LoadingStateCopyWith<$Res> {
  factory _$LoadingStateCopyWith(
          _LoadingState value, $Res Function(_LoadingState) then) =
      __$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$LoadingStateCopyWith<$Res> {
  __$LoadingStateCopyWithImpl(
      _LoadingState _value, $Res Function(_LoadingState) _then)
      : super(_value, (v) => _then(v as _LoadingState));

  @override
  _LoadingState get _value => super._value as _LoadingState;
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState();

  @override
  String toString() {
    return 'AuthState.loadingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? justRegistered) loginState,
    required TResult Function() registerState,
    required TResult Function() loadingState,
    required TResult Function() forgetPasswordState,
    required TResult Function(Auth auth) authSuccessfulState,
    required TResult Function(String message) authErrorState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? justRegistered)? loginState,
    TResult Function()? registerState,
    TResult Function()? loadingState,
    TResult Function()? forgetPasswordState,
    TResult Function(Auth auth)? authSuccessfulState,
    TResult Function(String message)? authErrorState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? justRegistered)? loginState,
    TResult Function()? registerState,
    TResult Function()? loadingState,
    TResult Function()? forgetPasswordState,
    TResult Function(Auth auth)? authSuccessfulState,
    TResult Function(String message)? authErrorState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginState value) loginState,
    required TResult Function(_RegisterState value) registerState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ForgetPasswordState value) forgetPasswordState,
    required TResult Function(_AuthSuccessfulState value) authSuccessfulState,
    required TResult Function(_AuthErrorState value) authErrorState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginState value)? loginState,
    TResult Function(_RegisterState value)? registerState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ForgetPasswordState value)? forgetPasswordState,
    TResult Function(_AuthSuccessfulState value)? authSuccessfulState,
    TResult Function(_AuthErrorState value)? authErrorState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginState value)? loginState,
    TResult Function(_RegisterState value)? registerState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ForgetPasswordState value)? forgetPasswordState,
    TResult Function(_AuthSuccessfulState value)? authSuccessfulState,
    TResult Function(_AuthErrorState value)? authErrorState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements AuthState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$ForgetPasswordStateCopyWith<$Res> {
  factory _$ForgetPasswordStateCopyWith(_ForgetPasswordState value,
          $Res Function(_ForgetPasswordState) then) =
      __$ForgetPasswordStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ForgetPasswordStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$ForgetPasswordStateCopyWith<$Res> {
  __$ForgetPasswordStateCopyWithImpl(
      _ForgetPasswordState _value, $Res Function(_ForgetPasswordState) _then)
      : super(_value, (v) => _then(v as _ForgetPasswordState));

  @override
  _ForgetPasswordState get _value => super._value as _ForgetPasswordState;
}

/// @nodoc

class _$_ForgetPasswordState implements _ForgetPasswordState {
  const _$_ForgetPasswordState();

  @override
  String toString() {
    return 'AuthState.forgetPasswordState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ForgetPasswordState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? justRegistered) loginState,
    required TResult Function() registerState,
    required TResult Function() loadingState,
    required TResult Function() forgetPasswordState,
    required TResult Function(Auth auth) authSuccessfulState,
    required TResult Function(String message) authErrorState,
  }) {
    return forgetPasswordState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? justRegistered)? loginState,
    TResult Function()? registerState,
    TResult Function()? loadingState,
    TResult Function()? forgetPasswordState,
    TResult Function(Auth auth)? authSuccessfulState,
    TResult Function(String message)? authErrorState,
  }) {
    return forgetPasswordState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? justRegistered)? loginState,
    TResult Function()? registerState,
    TResult Function()? loadingState,
    TResult Function()? forgetPasswordState,
    TResult Function(Auth auth)? authSuccessfulState,
    TResult Function(String message)? authErrorState,
    required TResult orElse(),
  }) {
    if (forgetPasswordState != null) {
      return forgetPasswordState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginState value) loginState,
    required TResult Function(_RegisterState value) registerState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ForgetPasswordState value) forgetPasswordState,
    required TResult Function(_AuthSuccessfulState value) authSuccessfulState,
    required TResult Function(_AuthErrorState value) authErrorState,
  }) {
    return forgetPasswordState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginState value)? loginState,
    TResult Function(_RegisterState value)? registerState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ForgetPasswordState value)? forgetPasswordState,
    TResult Function(_AuthSuccessfulState value)? authSuccessfulState,
    TResult Function(_AuthErrorState value)? authErrorState,
  }) {
    return forgetPasswordState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginState value)? loginState,
    TResult Function(_RegisterState value)? registerState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ForgetPasswordState value)? forgetPasswordState,
    TResult Function(_AuthSuccessfulState value)? authSuccessfulState,
    TResult Function(_AuthErrorState value)? authErrorState,
    required TResult orElse(),
  }) {
    if (forgetPasswordState != null) {
      return forgetPasswordState(this);
    }
    return orElse();
  }
}

abstract class _ForgetPasswordState implements AuthState {
  const factory _ForgetPasswordState() = _$_ForgetPasswordState;
}

/// @nodoc
abstract class _$AuthSuccessfulStateCopyWith<$Res> {
  factory _$AuthSuccessfulStateCopyWith(_AuthSuccessfulState value,
          $Res Function(_AuthSuccessfulState) then) =
      __$AuthSuccessfulStateCopyWithImpl<$Res>;
  $Res call({Auth auth});
}

/// @nodoc
class __$AuthSuccessfulStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthSuccessfulStateCopyWith<$Res> {
  __$AuthSuccessfulStateCopyWithImpl(
      _AuthSuccessfulState _value, $Res Function(_AuthSuccessfulState) _then)
      : super(_value, (v) => _then(v as _AuthSuccessfulState));

  @override
  _AuthSuccessfulState get _value => super._value as _AuthSuccessfulState;

  @override
  $Res call({
    Object? auth = freezed,
  }) {
    return _then(_AuthSuccessfulState(
      auth == freezed
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as Auth,
    ));
  }
}

/// @nodoc

class _$_AuthSuccessfulState implements _AuthSuccessfulState {
  const _$_AuthSuccessfulState(this.auth);

  @override
  final Auth auth;

  @override
  String toString() {
    return 'AuthState.authSuccessfulState(auth: $auth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthSuccessfulState &&
            (identical(other.auth, auth) ||
                const DeepCollectionEquality().equals(other.auth, auth)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(auth);

  @JsonKey(ignore: true)
  @override
  _$AuthSuccessfulStateCopyWith<_AuthSuccessfulState> get copyWith =>
      __$AuthSuccessfulStateCopyWithImpl<_AuthSuccessfulState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? justRegistered) loginState,
    required TResult Function() registerState,
    required TResult Function() loadingState,
    required TResult Function() forgetPasswordState,
    required TResult Function(Auth auth) authSuccessfulState,
    required TResult Function(String message) authErrorState,
  }) {
    return authSuccessfulState(auth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? justRegistered)? loginState,
    TResult Function()? registerState,
    TResult Function()? loadingState,
    TResult Function()? forgetPasswordState,
    TResult Function(Auth auth)? authSuccessfulState,
    TResult Function(String message)? authErrorState,
  }) {
    return authSuccessfulState?.call(auth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? justRegistered)? loginState,
    TResult Function()? registerState,
    TResult Function()? loadingState,
    TResult Function()? forgetPasswordState,
    TResult Function(Auth auth)? authSuccessfulState,
    TResult Function(String message)? authErrorState,
    required TResult orElse(),
  }) {
    if (authSuccessfulState != null) {
      return authSuccessfulState(auth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginState value) loginState,
    required TResult Function(_RegisterState value) registerState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ForgetPasswordState value) forgetPasswordState,
    required TResult Function(_AuthSuccessfulState value) authSuccessfulState,
    required TResult Function(_AuthErrorState value) authErrorState,
  }) {
    return authSuccessfulState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginState value)? loginState,
    TResult Function(_RegisterState value)? registerState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ForgetPasswordState value)? forgetPasswordState,
    TResult Function(_AuthSuccessfulState value)? authSuccessfulState,
    TResult Function(_AuthErrorState value)? authErrorState,
  }) {
    return authSuccessfulState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginState value)? loginState,
    TResult Function(_RegisterState value)? registerState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ForgetPasswordState value)? forgetPasswordState,
    TResult Function(_AuthSuccessfulState value)? authSuccessfulState,
    TResult Function(_AuthErrorState value)? authErrorState,
    required TResult orElse(),
  }) {
    if (authSuccessfulState != null) {
      return authSuccessfulState(this);
    }
    return orElse();
  }
}

abstract class _AuthSuccessfulState implements AuthState {
  const factory _AuthSuccessfulState(Auth auth) = _$_AuthSuccessfulState;

  Auth get auth => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AuthSuccessfulStateCopyWith<_AuthSuccessfulState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AuthErrorStateCopyWith<$Res> {
  factory _$AuthErrorStateCopyWith(
          _AuthErrorState value, $Res Function(_AuthErrorState) then) =
      __$AuthErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$AuthErrorStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthErrorStateCopyWith<$Res> {
  __$AuthErrorStateCopyWithImpl(
      _AuthErrorState _value, $Res Function(_AuthErrorState) _then)
      : super(_value, (v) => _then(v as _AuthErrorState));

  @override
  _AuthErrorState get _value => super._value as _AuthErrorState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_AuthErrorState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthErrorState implements _AuthErrorState {
  const _$_AuthErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.authErrorState(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthErrorState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$AuthErrorStateCopyWith<_AuthErrorState> get copyWith =>
      __$AuthErrorStateCopyWithImpl<_AuthErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? justRegistered) loginState,
    required TResult Function() registerState,
    required TResult Function() loadingState,
    required TResult Function() forgetPasswordState,
    required TResult Function(Auth auth) authSuccessfulState,
    required TResult Function(String message) authErrorState,
  }) {
    return authErrorState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? justRegistered)? loginState,
    TResult Function()? registerState,
    TResult Function()? loadingState,
    TResult Function()? forgetPasswordState,
    TResult Function(Auth auth)? authSuccessfulState,
    TResult Function(String message)? authErrorState,
  }) {
    return authErrorState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? justRegistered)? loginState,
    TResult Function()? registerState,
    TResult Function()? loadingState,
    TResult Function()? forgetPasswordState,
    TResult Function(Auth auth)? authSuccessfulState,
    TResult Function(String message)? authErrorState,
    required TResult orElse(),
  }) {
    if (authErrorState != null) {
      return authErrorState(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginState value) loginState,
    required TResult Function(_RegisterState value) registerState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ForgetPasswordState value) forgetPasswordState,
    required TResult Function(_AuthSuccessfulState value) authSuccessfulState,
    required TResult Function(_AuthErrorState value) authErrorState,
  }) {
    return authErrorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginState value)? loginState,
    TResult Function(_RegisterState value)? registerState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ForgetPasswordState value)? forgetPasswordState,
    TResult Function(_AuthSuccessfulState value)? authSuccessfulState,
    TResult Function(_AuthErrorState value)? authErrorState,
  }) {
    return authErrorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginState value)? loginState,
    TResult Function(_RegisterState value)? registerState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ForgetPasswordState value)? forgetPasswordState,
    TResult Function(_AuthSuccessfulState value)? authSuccessfulState,
    TResult Function(_AuthErrorState value)? authErrorState,
    required TResult orElse(),
  }) {
    if (authErrorState != null) {
      return authErrorState(this);
    }
    return orElse();
  }
}

abstract class _AuthErrorState implements AuthState {
  const factory _AuthErrorState(String message) = _$_AuthErrorState;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AuthErrorStateCopyWith<_AuthErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
