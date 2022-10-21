import 'package:dartz/dartz.dart';
import 'package:shared/shared.dart';

abstract class IUserRepository {
  Future<Option<User>> getUserByID(ID id);
  Future<void> create(User user);
  Future<void> delete(ID id);
}
