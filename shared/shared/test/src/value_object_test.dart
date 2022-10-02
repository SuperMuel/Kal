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

class _BasicValueObject extends ValueObject<_Failure, String> {
  @override
  final Either<_Failure, String> value;
  _BasicValueObject(this.value);
}

final failedVo = _BasicValueObject(Left(_Failure("failure")));
final validVo = _BasicValueObject(Right("valid"));
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
}
