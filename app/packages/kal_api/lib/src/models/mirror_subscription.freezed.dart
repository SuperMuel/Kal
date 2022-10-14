// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mirror_subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MirrorSubscription {
  String get id => throw _privateConstructorUsedError;
  String get mirrorID => throw _privateConstructorUsedError;
  DateTime? get lastRefresh => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MirrorSubscriptionCopyWith<MirrorSubscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MirrorSubscriptionCopyWith<$Res> {
  factory $MirrorSubscriptionCopyWith(
          MirrorSubscription value, $Res Function(MirrorSubscription) then) =
      _$MirrorSubscriptionCopyWithImpl<$Res, MirrorSubscription>;
  @useResult
  $Res call({String id, String mirrorID, DateTime? lastRefresh});
}

/// @nodoc
class _$MirrorSubscriptionCopyWithImpl<$Res, $Val extends MirrorSubscription>
    implements $MirrorSubscriptionCopyWith<$Res> {
  _$MirrorSubscriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mirrorID = null,
    Object? lastRefresh = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mirrorID: null == mirrorID
          ? _value.mirrorID
          : mirrorID // ignore: cast_nullable_to_non_nullable
              as String,
      lastRefresh: freezed == lastRefresh
          ? _value.lastRefresh
          : lastRefresh // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MirrorSubscriptionCopyWith<$Res>
    implements $MirrorSubscriptionCopyWith<$Res> {
  factory _$$_MirrorSubscriptionCopyWith(_$_MirrorSubscription value,
          $Res Function(_$_MirrorSubscription) then) =
      __$$_MirrorSubscriptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String mirrorID, DateTime? lastRefresh});
}

/// @nodoc
class __$$_MirrorSubscriptionCopyWithImpl<$Res>
    extends _$MirrorSubscriptionCopyWithImpl<$Res, _$_MirrorSubscription>
    implements _$$_MirrorSubscriptionCopyWith<$Res> {
  __$$_MirrorSubscriptionCopyWithImpl(
      _$_MirrorSubscription _value, $Res Function(_$_MirrorSubscription) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mirrorID = null,
    Object? lastRefresh = freezed,
  }) {
    return _then(_$_MirrorSubscription(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mirrorID: null == mirrorID
          ? _value.mirrorID
          : mirrorID // ignore: cast_nullable_to_non_nullable
              as String,
      lastRefresh: freezed == lastRefresh
          ? _value.lastRefresh
          : lastRefresh // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_MirrorSubscription implements _MirrorSubscription {
  const _$_MirrorSubscription(
      {required this.id, required this.mirrorID, this.lastRefresh});

  @override
  final String id;
  @override
  final String mirrorID;
  @override
  final DateTime? lastRefresh;

  @override
  String toString() {
    return 'MirrorSubscription(id: $id, mirrorID: $mirrorID, lastRefresh: $lastRefresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MirrorSubscription &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mirrorID, mirrorID) ||
                other.mirrorID == mirrorID) &&
            (identical(other.lastRefresh, lastRefresh) ||
                other.lastRefresh == lastRefresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, mirrorID, lastRefresh);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MirrorSubscriptionCopyWith<_$_MirrorSubscription> get copyWith =>
      __$$_MirrorSubscriptionCopyWithImpl<_$_MirrorSubscription>(
          this, _$identity);
}

abstract class _MirrorSubscription implements MirrorSubscription {
  const factory _MirrorSubscription(
      {required final String id,
      required final String mirrorID,
      final DateTime? lastRefresh}) = _$_MirrorSubscription;

  @override
  String get id;
  @override
  String get mirrorID;
  @override
  DateTime? get lastRefresh;
  @override
  @JsonKey(ignore: true)
  _$$_MirrorSubscriptionCopyWith<_$_MirrorSubscription> get copyWith =>
      throw _privateConstructorUsedError;
}
