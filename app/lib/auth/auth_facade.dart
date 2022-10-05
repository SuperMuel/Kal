// Stream<User> userStream
// option<User> currentUser
// Future<void> logInWithGoogle
// Future<void> logInWithApple
// Future <void> logOut

import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:shared/shared.dart';

abstract class IAuthFacade {
  Stream<User> get userStream;

  FutureOr<Option<User>> get currentUser;

  Future<void> logInWithGoogle();

  Future<void> logInWithApple();
}
