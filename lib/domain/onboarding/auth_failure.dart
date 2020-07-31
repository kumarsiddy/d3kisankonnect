import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.invalidEmailPasswordCombinationError() =
      InvalidEmailPasswordCombinationError;

  const factory AuthFailure.emailAlreadyRegistered() = EmailAlreadyRegistered;

  const factory AuthFailure.serverError() = ServerError;
}
