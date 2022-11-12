import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:kal_mysql_client/kal_mysql_client.dart';
import 'package:mysql_client/mysql_client.dart';

Future<MySQLConnection> initDB() async {
  final tablesCreationFile = File('tables_creation.sql');
  final tablesCreationScript = await tablesCreationFile.readAsString();

  final conn = await MySQLConnection.createConnection(
    host: '127.0.0.1',
    port: 3306,
    userName: 'root',
    password: 'supermuel',
  );
  await conn.connect();

  await conn.execute(tablesCreationScript);

  await conn.execute('use kal');
  return conn;
}

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  // 1. Execute any custom code prior to starting the server...
  final conn = await initDB();

  final mysqlClient = KalMysqlClient(conn);
  return serve(
    handler.use(provider<KalMysqlClient>((_) => mysqlClient)),
    ip,
    port,
  );
}
