import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'core_value_failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({@required String emailString}) =
      InvalidEmail<T>;

  const factory ValueFailure.invalidName({@required String nameString}) =
      InvalidName<T>;

  const factory ValueFailure.invalidPassword(
      {@required String passwordString}) = InvalidPassword<T>;
}
