import 'dart:io';

import 'package:api/i_user_repository.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:dartz/dartz.dart';
import 'package:models/models.dart' as models;
import 'package:shared/shared.dart';

import '_middleware.dart';

Response _get(RequestContext context) {
  // get jwt
  // if no jwt then 401
  // get user id from jwt
  // if invalid then 400
  // else get user from id
  // return user
  return Response.json(
      statusCode: 200, body: models.User(username: 'Supermuel'));
}

Response _post(RequestContext context) {
  // get jwt

  return Response(statusCode: 404);
}

Response _delete(RequestContext context) {
  final userID = ID();
  context.read<IUserRepository>().delete(userID);
  return Response();
}

Response onRequest(RequestContext context) {
  final request = context.request;
  // if not jwt then 403
  // get user ID
  switch (request.method) {
    case HttpMethod.get:
      return _get(context);
    case HttpMethod.post:
      return _post(context);
    case HttpMethod.delete:
      return _delete(context);
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.put:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

extension on Map<String, dynamic> {
  Option<String> get jwt {
    try {
      return Some((this['Authorization'] as String).split(' ')[1]);
    } on Exception {
      return const None();
    }
  }
}
