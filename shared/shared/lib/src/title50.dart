import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'value_object.dart';
part 'title50.freezed.dart';

@freezed
class Title50Failure with _$Title50Failure {
  const factory Title50Failure.notTrimmed(String failedValue) = _NotTrimmed;
  const factory Title50Failure.tooShort(String failedValue) = _TooShort;
  const factory Title50Failure.tooLong(String failedValue) = _TooLong;
  const factory Title50Failure.containsNewLine(String failedValue) =
      _ContainsNewLine;
}

class Title50 extends ValueObject<Title50Failure, String> {
  @override
  final Either<Title50Failure, String> value;

  const Title50._(this.value);

  /// Fails when the string's length exceeds this value
  static const kMaxLength = 50;

  /// Fails when the string's length is less than that
  static const kMinLength = 5;

  factory Title50(String title) {
    final trimmed = title.trim();
    if (trimmed != title) {
      return Title50._(Left(Title50Failure.notTrimmed(title)));
    }
    if (title.length < kMinLength) {
      return Title50._(Left(Title50Failure.tooShort(title)));
    }
    if (title.length > kMaxLength) {
      return Title50._(Left(Title50Failure.tooLong(title)));
    }
    if (title.contains('\n')) {
      return Title50._(Left(Title50Failure.containsNewLine(title)));
    }
    return Title50._(Right(title));
  }
}
