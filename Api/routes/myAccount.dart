import 'package:dart_frog/dart_frog.dart';
import 'package:dartz/dartz.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

Response onRequest(RequestContext context) {
  final request = context.request;
  if (request.method != HttpMethod.get) {
    return Response(statusCode: 405);
  }

  final jwtOption = request.headers.jwt;
  return jwtOption.fold(() => Response(statusCode: 404), (jwt) {
    final decoded = JwtDecoder.decode(jwt);
    print(decoded);

    return Response.json(body: {'username': 'Supermuel'});
  });
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
