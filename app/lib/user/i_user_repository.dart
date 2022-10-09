import 'package:dartz/dartz.dart';
import 'package:kal_app/user/user_repository_failure.dart';
import 'package:shared/shared.dart';

abstract class IUserRepository {
  Future<Either<UserRepositoryFailure, User>> get currentUser;
}
