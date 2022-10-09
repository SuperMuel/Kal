import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:kal_app/auth/i_auth_facade.dart';
import 'package:kal_app/user/i_user_repository.dart';
import 'package:kal_app/user/user_repository_failure.dart';
import 'package:shared/shared.dart';

class KalApiUserRepository implements IUserRepository {
  @override
  Future<Either<UserRepositoryFailure, User>> get currentUser async {
    final jwtOption = await GetIt.I.get<IAuthFacade>().getJwt();

    return jwtOption.fold(
        () => const Left(UserRepositoryFailure.signedOut()), _userFromJwt);
  }

  Future<Either<UserRepositoryFailure, User>> _userFromJwt(String jwt) async {
    print('found jwt : $jwt');
    final dio = GetIt.I.get<Dio>();
    late final Response response;
    try {
      response = await dio.get("myAccount",
          options: Options(headers: {'Authorization': 'Bearer $jwt'}));
    } on DioError catch (e) {
      print(e);
      return Left(UserRepositoryFailure.userNotFound());
    }

    print(response);
    return Right(User.complete(ID(), Username('Supermuel')));
  }
}


// IUserRepositoryFailure 
// requestInProgress
