import 'package:dartz_test/dartz_test.dart';
import 'package:shared/src/description.dart';
import 'package:test/test.dart' hide Description;

void main() {
  group('description fails when', () {
    test('Too long', () {
      final descriptions = [
        "a" * 10001,
        "a" * 20001,
      ];
      for (var description in descriptions) {
        final vo = Description(description);
        expect(vo.isFailure(), true);
        expect(vo.value, isLeftOf(DescriptionFailure.tooLong(description)));
      }
    });
  });

  test("Valid not empty description pass", () {
    final descriptions = [
      "a" * 1000,
      "a" * 983,
      "    Description with some\t formating \n\n .. ",
    ];
    for (var description in descriptions) {
      final vo = Description(description);
      expect(vo.isValid(), true);
      expect(vo.value, isRightOf(description));
    }
  });
  test("Empty string description", () {
    final vo = Description("");
    expect(vo.isValid(), true);
    expect(vo.value, isRightOf(""));
  });
  test("null description", () {
    final vo = Description(null);
    expect(vo.isValid(), true);
    expect(vo.value, isRightOf(""));
  });
}
