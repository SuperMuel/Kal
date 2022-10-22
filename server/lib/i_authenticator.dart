import 'package:validated_objects/validated_objects.dart';

abstract class IAuthenticator {
  ID? userIDFromJwt(String jwt);
}
