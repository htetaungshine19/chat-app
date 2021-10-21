import 'package:freezed_annotation/freezed_annotation.dart';
part 'class.freezed.dart';

@freezed
class Test with _$Test {
  Test._();
  factory Test({required String a, String? b}) = _Test;
  factory Test.login() = _login;
}
