import 'package:d3kisankonnect/domain/core/core_value_objects.dart';
import 'package:d3kisankonnect/domain/core/core_value_failures.dart';
import 'package:d3kisankonnect/domain/onboarding/value_object_validaors.dart';
import 'package:dartz/dartz.dart';

class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Name(String input) {
    assert(input != null);

    return Name._(validateName(input));
  }

  const Name._(this.value);
}

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

class Mobile extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Mobile(String input) {
    assert(input != null);

    return Mobile._(validateMobile(input));
  }

  Mobile._(this.value);
}

class Gender extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Gender(String input) {
    assert(input != null);

    return Gender._(validateGender(input));
  }

  Gender._(this.value);
}
