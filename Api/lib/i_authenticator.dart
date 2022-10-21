import 'package:shared/shared.dart';

abstract class IAuthenticator {
  ID userIDFromJwt(String jwt);
}
