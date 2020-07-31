import 'package:d3kisankonnect/domain/core/core_errors.dart';
import 'package:d3kisankonnect/domain/core/core_value_failures.dart';
import 'package:dartz/dartz.dart';

abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  T getOrException() {
    return value.fold(
        (failure) => throw UnexpectedValueError(failure), (r) => r);
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ValueObject<T> &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return 'ValueObject{value: $value}';
  }
}
