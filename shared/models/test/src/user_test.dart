import 'package:models/src/user.dart';
import 'package:test/test.dart';

void main() {
  test('username is nullable', () {
    final user = User();
    expect(user.username, isNull);
  });
  test('id is nullable', () {
    final user = User();
    expect(user.id, isNull);
  });

  test('supports value comparison', () {
    final a = User(id: 'id', username: 'supermuel');
    final b = User(id: 'id', username: 'supermuel');
    expect(a, b);
  });

  group('Supports json serialization / deserialization', () {
    final user = User(id: 'id', username: 'supermuel');

    test('Json key', () {
      final json = user.toJson();

      expect(json['id'], user.id);
      expect(json['username'], user.username);
    });

    test('null username is null in json', () {
      final nullUsernameUser = User();
      final json = nullUsernameUser.toJson();
      expect(json['username'], isNull);
    });

    test('null id is null in json', () {
      final nullIdUser = User();
      final json = nullIdUser.toJson();
      expect(json['id'], isNull);
    });

    test('Serializing then deserializing is identity', () {
      final json = user.toJson();

      expect(user, User.fromJson(json));
    });
  });
}
