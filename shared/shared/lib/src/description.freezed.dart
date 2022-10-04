// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DescriptionFailure {
  String get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) tooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? tooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? tooLong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TooLong value) tooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TooLong value)? tooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TooLong value)? tooLong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DescriptionFailureCopyWith<DescriptionFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DescriptionFailureCopyWith<$Res> {
  factory $DescriptionFailureCopyWith(
          DescriptionFailure value, $Res Function(DescriptionFailure) then) =
      _$DescriptionFailureCopyWithImpl<$Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$DescriptionFailureCopyWithImpl<$Res>
    implements $DescriptionFailureCopyWith<$Res> {
  _$DescriptionFailureCopyWithImpl(this._value, this._then);

  final DescriptionFailure _value;
  // ignore: unused_field
  final $Res Function(DescriptionFailure) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TooLongCopyWith<$Res>
    implements $DescriptionFailureCopyWith<$Res> {
  factory _$$_TooLongCopyWith(
          _$_TooLong value, $Res Function(_$_TooLong) then) =
      __$$_TooLongCopyWithImpl<$Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class __$$_TooLongCopyWithImpl<$Res>
    extends _$DescriptionFailureCopyWithImpl<$Res>
    implements _$$_TooLongCopyWith<$Res> {
  __$$_TooLongCopyWithImpl(_$_TooLong _value, $Res Function(_$_TooLong) _then)
      : super(_value, (v) => _then(v as _$_TooLong));

  @override
  _$_TooLong get _value => super._value as _$_TooLong;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$_TooLong(
      failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TooLong implements _TooLong {
  const _$_TooLong(this.failedValue);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'DescriptionFailure.tooLong(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TooLong &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$_TooLongCopyWith<_$_TooLong> get copyWith =>
      __$$_TooLongCopyWithImpl<_$_TooLong>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) tooLong,
  }) {
    return tooLong(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? tooLong,
  }) {
    return tooLong?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? tooLong,
    required TResult orElse(),
  }) {
    if (tooLong != null) {
      return tooLong(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TooLong value) tooLong,
  }) {
    return tooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TooLong value)? tooLong,
  }) {
    return tooLong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TooLong value)? tooLong,
    required TResult orElse(),
  }) {
    if (tooLong != null) {
      return tooLong(this);
    }
    return orElse();
  }
}

abstract class _TooLong implements DescriptionFailure {
  const factory _TooLong(final String failedValue) = _$_TooLong;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$_TooLongCopyWith<_$_TooLong> get copyWith =>
      throw _privateConstructorUsedError;
}
