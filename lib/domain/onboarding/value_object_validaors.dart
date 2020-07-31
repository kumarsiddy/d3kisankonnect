import 'package:d3kisankonnect/domain/core/core_value_failures.dart';
import 'package:dartz/dartz.dart';

Either<ValueFailure<String>, String> validateEmail(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  }
  return left(ValueFailure.invalidEmail(emailString: input));
}

Either<ValueFailure<String>, String> validateName(String input) {
  const nameRegex = r"""[a-zA-Z]""";

  if (RegExp(nameRegex).hasMatch(input)) {
    return right(input);
  }
  return left(ValueFailure<String>.invalidName(nameString: input));
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    right(input);
  }

  return left(ValueFailure.invalidPassword(passwordString: input));
}
