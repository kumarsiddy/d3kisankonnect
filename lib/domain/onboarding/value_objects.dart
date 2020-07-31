import 'package:d3kisankonnect/domain/core/core_value_objects.dart';
import 'package:d3kisankonnect/domain/core/core_value_failures.dart';
import 'package:d3kisankonnect/domain/onboarding/value_object_validaors.dart';
import 'package:dartz/dartz.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);

    return EmailAddress._(validateEmail(input));
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);

    return Password._(validatePassword(input));
  }

  Password._(this.value);
}
