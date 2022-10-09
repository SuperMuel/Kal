import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_repository_failure.freezed.dart';

@freezed
class UserRepositoryFailure with _$UserRepositoryFailure {
  const factory UserRepositoryFailure.requestInProgress() = _RequestInProgress;
  const factory UserRepositoryFailure.userNotFound() = _userNotFound;
  const factory UserRepositoryFailure.signedOut() = _SignedOut;
}
