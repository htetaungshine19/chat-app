// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TestTearOff {
  const _$TestTearOff();

  _Test call({required String a, String? b}) {
    return _Test(
      a: a,
      b: b,
    );
  }

  _login login() {
    return _login();
  }
}

/// @nodoc
const $Test = _$TestTearOff();

/// @nodoc
mixin _$Test {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a, String? b) $default, {
    required TResult Function() login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String a, String? b)? $default, {
    TResult Function()? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a, String? b)? $default, {
    TResult Function()? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Test value) $default, {
    required TResult Function(_login value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Test value)? $default, {
    TResult Function(_login value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Test value)? $default, {
    TResult Function(_login value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestCopyWith<$Res> {
  factory $TestCopyWith(Test value, $Res Function(Test) then) =
      _$TestCopyWithImpl<$Res>;
}

/// @nodoc
class _$TestCopyWithImpl<$Res> implements $TestCopyWith<$Res> {
  _$TestCopyWithImpl(this._value, this._then);

  final Test _value;
  // ignore: unused_field
  final $Res Function(Test) _then;
}

/// @nodoc
abstract class _$TestCopyWith<$Res> {
  factory _$TestCopyWith(_Test value, $Res Function(_Test) then) =
      __$TestCopyWithImpl<$Res>;
  $Res call({String a, String? b});
}

/// @nodoc
class __$TestCopyWithImpl<$Res> extends _$TestCopyWithImpl<$Res>
    implements _$TestCopyWith<$Res> {
  __$TestCopyWithImpl(_Test _value, $Res Function(_Test) _then)
      : super(_value, (v) => _then(v as _Test));

  @override
  _Test get _value => super._value as _Test;

  @override
  $Res call({
    Object? a = freezed,
    Object? b = freezed,
  }) {
    return _then(_Test(
      a: a == freezed
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      b: b == freezed
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Test extends _Test {
  _$_Test({required this.a, this.b}) : super._();

  @override
  final String a;
  @override
  final String? b;

  @override
  String toString() {
    return 'Test(a: $a, b: $b)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Test &&
            (identical(other.a, a) ||
                const DeepCollectionEquality().equals(other.a, a)) &&
            (identical(other.b, b) ||
                const DeepCollectionEquality().equals(other.b, b)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(a) ^
      const DeepCollectionEquality().hash(b);

  @JsonKey(ignore: true)
  @override
  _$TestCopyWith<_Test> get copyWith =>
      __$TestCopyWithImpl<_Test>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a, String? b) $default, {
    required TResult Function() login,
  }) {
    return $default(a, b);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String a, String? b)? $default, {
    TResult Function()? login,
  }) {
    return $default?.call(a, b);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a, String? b)? $default, {
    TResult Function()? login,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(a, b);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Test value) $default, {
    required TResult Function(_login value) login,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Test value)? $default, {
    TResult Function(_login value)? login,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Test value)? $default, {
    TResult Function(_login value)? login,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Test extends Test {
  factory _Test({required String a, String? b}) = _$_Test;
  _Test._() : super._();

  String get a => throw _privateConstructorUsedError;
  String? get b => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TestCopyWith<_Test> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$loginCopyWith<$Res> {
  factory _$loginCopyWith(_login value, $Res Function(_login) then) =
      __$loginCopyWithImpl<$Res>;
}

/// @nodoc
class __$loginCopyWithImpl<$Res> extends _$TestCopyWithImpl<$Res>
    implements _$loginCopyWith<$Res> {
  __$loginCopyWithImpl(_login _value, $Res Function(_login) _then)
      : super(_value, (v) => _then(v as _login));

  @override
  _login get _value => super._value as _login;
}

/// @nodoc

class _$_login extends _login {
  _$_login() : super._();

  @override
  String toString() {
    return 'Test.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _login);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a, String? b) $default, {
    required TResult Function() login,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String a, String? b)? $default, {
    TResult Function()? login,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a, String? b)? $default, {
    TResult Function()? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Test value) $default, {
    required TResult Function(_login value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Test value)? $default, {
    TResult Function(_login value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Test value)? $default, {
    TResult Function(_login value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _login extends Test {
  factory _login() = _$_login;
  _login._() : super._();
}
