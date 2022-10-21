// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'source_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SourceSchedule _$SourceScheduleFromJson(Map<String, dynamic> json) {
  return _SourceSchedule.fromJson(json);
}

/// @nodoc
mixin _$SourceSchedule {
  String get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get icsUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourceScheduleCopyWith<SourceSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceScheduleCopyWith<$Res> {
  factory $SourceScheduleCopyWith(
          SourceSchedule value, $Res Function(SourceSchedule) then) =
      _$SourceScheduleCopyWithImpl<$Res, SourceSchedule>;
  @useResult
  $Res call({String id, String? title, String? icsUrl});
}

/// @nodoc
class _$SourceScheduleCopyWithImpl<$Res, $Val extends SourceSchedule>
    implements $SourceScheduleCopyWith<$Res> {
  _$SourceScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? icsUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      icsUrl: freezed == icsUrl
          ? _value.icsUrl
          : icsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SourceScheduleCopyWith<$Res>
    implements $SourceScheduleCopyWith<$Res> {
  factory _$$_SourceScheduleCopyWith(
          _$_SourceSchedule value, $Res Function(_$_SourceSchedule) then) =
      __$$_SourceScheduleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? title, String? icsUrl});
}

/// @nodoc
class __$$_SourceScheduleCopyWithImpl<$Res>
    extends _$SourceScheduleCopyWithImpl<$Res, _$_SourceSchedule>
    implements _$$_SourceScheduleCopyWith<$Res> {
  __$$_SourceScheduleCopyWithImpl(
      _$_SourceSchedule _value, $Res Function(_$_SourceSchedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? icsUrl = freezed,
  }) {
    return _then(_$_SourceSchedule(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      icsUrl: freezed == icsUrl
          ? _value.icsUrl
          : icsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SourceSchedule implements _SourceSchedule {
  const _$_SourceSchedule({required this.id, this.title, this.icsUrl});

  factory _$_SourceSchedule.fromJson(Map<String, dynamic> json) =>
      _$$_SourceScheduleFromJson(json);

  @override
  final String id;
  @override
  final String? title;
  @override
  final String? icsUrl;

  @override
  String toString() {
    return 'SourceSchedule(id: $id, title: $title, icsUrl: $icsUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SourceSchedule &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.icsUrl, icsUrl) || other.icsUrl == icsUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, icsUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SourceScheduleCopyWith<_$_SourceSchedule> get copyWith =>
      __$$_SourceScheduleCopyWithImpl<_$_SourceSchedule>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SourceScheduleToJson(
      this,
    );
  }
}

abstract class _SourceSchedule implements SourceSchedule {
  const factory _SourceSchedule(
      {required final String id,
      final String? title,
      final String? icsUrl}) = _$_SourceSchedule;

  factory _SourceSchedule.fromJson(Map<String, dynamic> json) =
      _$_SourceSchedule.fromJson;

  @override
  String get id;
  @override
  String? get title;
  @override
  String? get icsUrl;
  @override
  @JsonKey(ignore: true)
  _$$_SourceScheduleCopyWith<_$_SourceSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}
