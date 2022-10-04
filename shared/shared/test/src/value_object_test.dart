import 'package:dartz/dartz.dart';
import 'package:test/test.dart';

import 'package:shared/shared.dart';

class _Failure {
  final String value;
  _Failure(
    this.value,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is _Failure && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class _DumbValueObject extends ValueObject<_Failure, String> {
  @override
  final Either<_Failure, String> value;
  _DumbValueObject(this.value);
}

final failedVo = _DumbValueObject(Left(_Failure("failure")));
final validVo = _DumbValueObject(Right("valid"));
void main() {
  group('getValueOrCrash', () {
    test('onFailed should throw', () {
      expect(() => failedVo.getValueOrCrash(),
          throwsA(isA<UnexpectedFailedValueObjectError>()));
    });
    test('onValid should return', () {
      expect(validVo.getValueOrCrash(), equals("valid"));
    });
  });
  group('getFailureOrCrash', () {
    test('onFailed should return', () {
      expect(failedVo.getFailureOrCrash(), equals(_Failure("failure")));
    });
    test('onValid should throw', () {
      expect(() => validVo.getFailureOrCrash(),
          throwsA(isA<UnexpectedValidValueObjectError>()));
    });
  });
  test('isValid/invalid', () {
    expect(validVo.isValid(), true);
    expect(validVo.isFailure(), false);
    expect(failedVo.isFailure(), true);
    expect(failedVo.isValid(), false);
  });
  group("Equality using ==", () {
    test("returns True on 2 equal value objects ", () {
      final vo1 = _DumbValueObject(Right("Value"));
      final vo2 = _DumbValueObject(Right("Value"));
      expect(vo1 == vo2, true);
    });
    test("returns False given a failed and a valid value object", () {
      final vo1 = _DumbValueObject(Right("Value"));
      final vo2 = _DumbValueObject(Left(_Failure("Value")));
      expect(vo1 == vo2, false);
    });
    test("returns False given 2 valid value objects of different values", () {
      final vo1 = _DumbValueObject(Right("AAAAA"));
      final vo2 = _DumbValueObject(Right("VVVVV"));
      expect(vo1 == vo2, false);
    });
  });
}
