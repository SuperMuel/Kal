import 'package:dartz_test/dartz_test.dart';
import 'package:test/test.dart';
import 'package:validated_objects/validated_objects.dart';

void main() {
  group('Username creation fails', () {
    test('Instanciate with null value', () {
      final username = Username(null);
      expect(username.isFailure(), true);
      expect(username.value, isLeftOf(UsernameFailure.tooShort('')));
    });
    test('username too short', () {
      for (var i = 0; i < 5; i++) {
        String username = "a" * i;
        final vo = Username(username);
        expect(vo.isFailure(), true);
        expect(vo.value, isLeftOf(UsernameFailure.tooShort(username)));
      }
    });
    test('username too long', () {
      String username = "ThisIs21Characterssss";
      for (var i = 0; i < 10; i++) {
        username = username + username;
        final vo = Username(username);
        expect(vo.isFailure(), true);
        expect(vo.value, isLeftOf(UsernameFailure.tooLong(username)));
      }
    });
    test('must start with letter', () {
      final usernames = [
        "_UnderscoreUsername",
        "8NumberUserName",
        ".DotUsername",
        ",ComaUsernmae",
        " spaceusername",
        "\tTabUsername"
      ];
      for (var username in usernames) {
        username = username;
        final vo = Username(username);
        expect(vo.isFailure(), true);
        expect(
            vo.value, isLeftOf(UsernameFailure.mustStartWithALetter(username)));
      }
    });
    test('Other invalid usernames', () {
      final usernames = [
        "EndsWithUnderscore_",
        "Endswithspace ",
        "Endswithspace\t",
        "has\nnewline",
        "EndsWithnewline\n",
        "Has⚡emoji"
      ];
      for (var username in usernames) {
        username = username;
        final vo = Username(username);
        expect(vo.isFailure(), true);
        expect(vo.value, isLeftOf(UsernameFailure.invalid(username)));
      }
    });
  });
  group('Username creation success', () {
    test('Valid usernames', () {
      final usernames = [
        "SuperMuel",
        "Supermuel",
        "supermuel",
        "supermue8",
        "ALLCAPS",
        "fivec",
        "TwentyCharactersssss"
      ];
      for (var username in usernames) {
        username = username;
        final vo = Username(username);
        expect(vo.isValid(), true);
        expect(vo.value, isRightOf(username));
      }
    });
  });
}
