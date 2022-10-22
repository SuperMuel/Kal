import 'package:validated_objects/validated_objects.dart';

void main() {
  final invalid = Username('78 PE2 ^^ ù !');
  invalid.getFailureOrCrash(); // UsernameFailure.mustStartWithALetter
  invalid.isValid(); // False
  invalid.getValueOrCrash(); // Crashes

  final valid = Username('SuperMuel');
  valid.isValid(); // True
  valid.getValueOrCrash(); // 'SuperMuel'
}
