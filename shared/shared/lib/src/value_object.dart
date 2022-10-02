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
  Either<F, V> get value;

  V getValueOrCrash() =>
      value.fold((_) => throw UnexpectedFailedValueObjectError(), id);

  F getFailureOrCrash() =>
      value.fold(id, (_) => throw UnexpectedValidValueObjectError());

  bool isValid() => value.isRight();

  bool isFailure() => value.isLeft();
}
