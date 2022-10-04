import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// Thrown when trying to access the value of a failed [ValueObject]
///
/// Indicates an error of programming, program must exit.
class UnexpectedFailedValueObjectError extends Error {}

/// Thrown when trying to access the failure of a valid [ValueObject]
///
/// Indicates an error of programming, program must exit.
class UnexpectedValidValueObjectError extends Error {}

@immutable
abstract class ValueObject<F, V> {
  const ValueObject();

  Either<F, V> get value;

  V getValueOrCrash() =>
      value.fold((_) => throw UnexpectedFailedValueObjectError(), id);

  F getFailureOrCrash() =>
      value.fold(id, (_) => throw UnexpectedValidValueObjectError());

  bool isValid() => value.isRight();

  bool isFailure() => value.isLeft();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject<F, V> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return "$runtimeType($value)";
  }
}
