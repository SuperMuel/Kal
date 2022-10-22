import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:validated_objects/validated_objects.dart';
part 'i_user_repository.freezed.dart';

@freezed
class UserRepositoryFailure with _$UserRepositoryFailure {
  const factory UserRepositoryFailure.usernameAlreadyExists() =
      _UsernameAlreadyExists;

  const factory UserRepositoryFailure.userNotFound() = _UserNotFound;
}

abstract class IUserRepository {
  Future<Option<User>> getUserByID(ID id);
  Future<Either<UserRepositoryFailure, Unit>> create(CompleteUser user);
  Future<Either<UserRepositoryFailure, Unit>> delete(ID id);
}
