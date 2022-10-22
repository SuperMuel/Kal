import 'package:dartz_test/dartz_test.dart';
import 'package:test/test.dart';
import 'package:validated_objects/validated_objects.dart';

void main() {
  group('title fails when', () {
    test('not trimmed', () {
      final titles = [
        " username ",
        " username",
        "username ",
      ];
      for (var title in titles) {
        final vo = Title50(title);
        expect(vo.isFailure(), true);
        expect(vo.value, isLeftOf(Title50Failure.notTrimmed(title)));
      }
    });
    test('too short', () {
      final titles = [
        "",
        "a",
        "aa",
        "aaa",
        "aaaa",
      ];
      for (var title in titles) {
        final vo = Title50(title);
        expect(vo.isFailure(), true);
        expect(vo.value, isLeftOf(Title50Failure.tooShort(title)));
      }
    });
    test('too long', () {
      final titles = ["a" * 51, "a" * 100];
      for (var title in titles) {
        final vo = Title50(title);
        expect(vo.isFailure(), true);
        expect(vo.value, isLeftOf(Title50Failure.tooLong(title)));
      }
    });
  });
  test("Valid title pass", () {
    final titles = [
      "5char",
    ];
    for (var title in titles) {
      final vo = Title50(title);
      expect(vo.isValid(), true);
      expect(vo.value, isRightOf(title));
    }
  });
}
