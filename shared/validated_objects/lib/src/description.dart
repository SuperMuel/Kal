import 'package:dartz/dartz.dart';

import 'value_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'description.freezed.dart';

@freezed
class DescriptionFailure with _$DescriptionFailure {
  const factory DescriptionFailure.tooLong(String failedValue) = _TooLong;
}

/// Represents a general description.
///
/// A description can be empty. It can be instanciated with a null value, however
/// the created object will hold an empty String ""
class Description extends ValueObject<DescriptionFailure, String> {
  @override
  final Either<DescriptionFailure, String> value;

  const Description._(this.value);

  /// Fails when the string's length exceeds this value
  static const kMaxLength = 1000;

  factory Description(String? description) {
    description = description ?? "";
    if (description.length > kMaxLength) {
      return Description._(Left(DescriptionFailure.tooLong(description)));
    }

    return Description._(Right(description));
  }
}
