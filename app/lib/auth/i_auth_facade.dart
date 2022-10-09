import 'dart:async';

import 'package:dartz/dartz.dart';

abstract class IAuthFacade {
  Stream<Option<String>> get jwtStream;

  Future<void> logInWithGoogle();

  Future<void> logInWithApple();

  Future<void> signOut();

  Future<Option<String>> getJwt();
}
