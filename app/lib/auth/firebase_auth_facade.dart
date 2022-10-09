import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter/foundation.dart';
import 'dart:async';

import 'package:kal_app/auth/i_auth_facade.dart';

class FirebaseAuthFacade extends IAuthFacade {
  FirebaseAuthFacade()
      : _instance = FirebaseAuth.instance,
        jwtStream = FirebaseAuth.instance.idTokenChanges().asyncMap(
              (user) async =>
                  user == null ? const None() : Some(await user.getIdToken()),
            );

  @override
  final Stream<Option<String>> jwtStream;

  final FirebaseAuth _instance;

  @override
  Future<Option<String>> getJwt() async {
    final token = await _instance.currentUser?.getIdToken();
    return optionOf(token);
  }

  @override
  Future<void> logInWithApple() {
    // TODO: implement logInWithApple
    throw UnimplementedError();
  }

  @override
  Future<void> logInWithGoogle() async {
    if (kIsWeb) {
      GoogleAuthProvider googleAuthProvider = GoogleAuthProvider();
      await _instance.signInWithPopup(googleAuthProvider);
    } else {
      // TODO: implement logInWithGoogle on mobile platforms
      throw UnimplementedError();
    }
  }

  @override
  Future<void> signOut() => _instance.signOut();
}
