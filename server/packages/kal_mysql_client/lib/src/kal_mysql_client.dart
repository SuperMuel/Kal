import 'package:mysql_client/mysql_client.dart';
import 'package:validated_objects/validated_objects.dart' as vos;
import 'package:models/models.dart' as dtos;

class KalMysqlClient {
  final MySQLConnection _conn;

  KalMysqlClient(this._conn);

  Future<dtos.User?> getUserByID(String id) async {
    final result = await _conn.execute(
      "SELECT * FROM users WHERE uid = :uid LIMIT 1",
      {"uid": id},
    );
    if (result.rows.isEmpty) {
      return null;
    }
    final map = result.rows.first.assoc();

    return dtos.User(username: map['username']);
  }

  Future<dtos.User?> getUserByUsername(String username) async {
    final result = await _conn.execute(
      "SELECT * FROM users WHERE username = :username LIMIT 1",
      {"username": username},
    );
    if (result.rows.isEmpty) {
      return null;
    }
    final map = result.rows.first.assoc();

    return dtos.User(username: map['username']);
  }

  Future<void> createUser(vos.CompleteUser user) async {
    final stmt = await _conn.prepare(
        'INSERT INTO `kal`.`users` (`username`, `uid` `creation_dt`) VALUES (?, ?, ?);');
    await stmt
        .execute([user.username.getValueOrCrash(), user.id, DateTime.now()]);
  }

  /// Closes the inner connection
  Future<void> close() async {
    await _conn.close();
  }
}
