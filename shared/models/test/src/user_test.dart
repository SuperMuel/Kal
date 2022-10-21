import 'package:models/src/user.dart';
import 'package:test/test.dart';

void main() {
  test('username is nullable', () {
    final user = User();
    expect(user.username, isNull);
  });

  test('supports value comparison', () {
    final a = User(username: 'supermuel');
    final b = User(username: 'supermuel');
    expect(a, b);
  });

  group('Supports json serialization / deserialization', () {
    final user = User(username: 'supermuel');

    test('Json key', () {
      final json = user.toJson();

      expect(json['username'], user.username);
    });

    test('null username is null in json', () {
      final nullUsernameUser = User();
      final json = nullUsernameUser.toJson();
      expect(json['username'], isNull);
    });

    test('Serializing then deserializing is identity', () {
      final json = user.toJson();

      expect(user, User.fromJson(json));
    });
  });
}
