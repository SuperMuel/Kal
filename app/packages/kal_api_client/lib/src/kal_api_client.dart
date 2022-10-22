import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:models/models.dart';

/// Base class to communicate with the official Kal API
class KalApiClient {
  final http.Client _client;

  final String authority;

  KalApiClient({
    http.Client? client,
    this.authority =
        'https://virtserver.swaggerhub.com/SuperMuel/kal_api/0.0.3-alpha-oas3',
  }) : _client = client ?? http.Client();

  /// Checks if the account was created for this jwt
  ///
  /// If not, returns null
  ///
  /// If an account exists, returns the user information. Username can be null
  /// in the returned [User]
  ///
  /// Example :
  /// ```dart
  /// final user = await api.myAccount('eyJhGci...');
  /// if(user == null){
  ///   // account not created
  /// }
  /// else{
  ///   final username = user.username;
  ///   if( username == null){
  ///     // Account incomplete
  ///   }
  /// }
  /// ```
  Future<User?> getMyAccount(String jwt) async {
    final uri = Uri.https(authority, 'myAccount');
    final response = await _client.get(uri, headers: {
      'Authorization': 'Bearer $jwt',
      'Content-Type': 'application/json'
    });

    switch (response.statusCode) {
      case 404:
        return null;
      case 200:
        return User.fromJson(jsonDecode(response.body));
      default:
        throw Exception('Invalid status code'); //TODO custom exception
    }
  }

  Future<User> createMyAccount(String jwt, User user) async {
    final uri = Uri.https(authority, 'myAccount');
    final response = await _client.post(uri,
        headers: {
          'Authorization': 'Bearer $jwt',
          'Content-Type': 'application/json'
        },
        body: jsonEncode(user));

    switch (response.statusCode) {
      case 200:
        return User.fromJson(jsonDecode(response.body));
      default:
        throw Exception('Invalid status code'); //TODO custom exception
    }
  }

  /// Deletes the user account. Returns true if successfull
  Future<bool> deleteMyAccount(String jwt) async {
    final uri = Uri.https(authority, 'myAccount');
    final response = await _client.delete(uri, headers: {
      'Authorization': 'Bearer $jwt',
    });
    return response.statusCode == 200;
  }
}
