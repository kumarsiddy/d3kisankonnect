import 'package:d3kisankonnect/domain/core/core_value_failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    return Error.safeToString(
        'Encountered a ValueFailure at an unrecoverable point. Terminating... Failure was $valueFailure');
  }
}
