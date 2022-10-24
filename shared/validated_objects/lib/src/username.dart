import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../validated_objects.dart';
part 'username.freezed.dart';

@freezed
class UsernameFailure with _$UsernameFailure {
  const factory UsernameFailure.tooLong(String failedValue) = _TooLong;
  const factory UsernameFailure.tooShort(String failedValue) = _TooShort;
  const factory UsernameFailure.invalid(String failedValue) = _Invalid;
  const factory UsernameFailure.mustStartWithALetter(String failedValue) =
      _MustStartWithALetter;
}

class Username extends ValueObject<UsernameFailure, String> {
  @override
  final Either<UsernameFailure, String> value;

  const Username._(Either<UsernameFailure, String> v) : value = v;

  factory Username(String? username) {
    username = username ?? '';
    if (username.length < 5) {
      return Username._(Left(UsernameFailure.tooShort(username)));
    }
    if (username.length > 20) {
      return Username._(Left(UsernameFailure.tooLong(username)));
    }
    if (!RegExp(r"^[A-Za-z]$").hasMatch(username[0])) {
      return Username._(Left(UsernameFailure.mustStartWithALetter(username)));
    }
    if (!RegExp(r'^[A-Za-z][A-Za-z0-9_]{3,18}[A-Za-z0-9]$')
        .hasMatch(username)) {
      return Username._(Left(UsernameFailure.invalid(username)));
    }
    return Username._(Right(username));
  }
}
