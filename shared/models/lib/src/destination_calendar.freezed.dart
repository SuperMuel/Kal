// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'destination_calendar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DestinationCalendar _$DestinationCalendarFromJson(Map<String, dynamic> json) {
  return _DestinationCalendar.fromJson(json);
}

/// @nodoc
mixin _$DestinationCalendar {
  String get calendarID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DestinationCalendarCopyWith<DestinationCalendar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinationCalendarCopyWith<$Res> {
  factory $DestinationCalendarCopyWith(
          DestinationCalendar value, $Res Function(DestinationCalendar) then) =
      _$DestinationCalendarCopyWithImpl<$Res, DestinationCalendar>;
  @useResult
  $Res call({String calendarID});
}

/// @nodoc
class _$DestinationCalendarCopyWithImpl<$Res, $Val extends DestinationCalendar>
    implements $DestinationCalendarCopyWith<$Res> {
  _$DestinationCalendarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calendarID = null,
  }) {
    return _then(_value.copyWith(
      calendarID: null == calendarID
          ? _value.calendarID
          : calendarID // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DestinationCalendarCopyWith<$Res>
    implements $DestinationCalendarCopyWith<$Res> {
  factory _$$_DestinationCalendarCopyWith(_$_DestinationCalendar value,
          $Res Function(_$_DestinationCalendar) then) =
      __$$_DestinationCalendarCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String calendarID});
}

/// @nodoc
class __$$_DestinationCalendarCopyWithImpl<$Res>
    extends _$DestinationCalendarCopyWithImpl<$Res, _$_DestinationCalendar>
    implements _$$_DestinationCalendarCopyWith<$Res> {
  __$$_DestinationCalendarCopyWithImpl(_$_DestinationCalendar _value,
      $Res Function(_$_DestinationCalendar) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calendarID = null,
  }) {
    return _then(_$_DestinationCalendar(
      calendarID: null == calendarID
          ? _value.calendarID
          : calendarID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DestinationCalendar implements _DestinationCalendar {
  const _$_DestinationCalendar({required this.calendarID});

  factory _$_DestinationCalendar.fromJson(Map<String, dynamic> json) =>
      _$$_DestinationCalendarFromJson(json);

  @override
  final String calendarID;

  @override
  String toString() {
    return 'DestinationCalendar(calendarID: $calendarID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DestinationCalendar &&
            (identical(other.calendarID, calendarID) ||
                other.calendarID == calendarID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, calendarID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DestinationCalendarCopyWith<_$_DestinationCalendar> get copyWith =>
      __$$_DestinationCalendarCopyWithImpl<_$_DestinationCalendar>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DestinationCalendarToJson(
      this,
    );
  }
}

abstract class _DestinationCalendar implements DestinationCalendar {
  const factory _DestinationCalendar({required final String calendarID}) =
      _$_DestinationCalendar;

  factory _DestinationCalendar.fromJson(Map<String, dynamic> json) =
      _$_DestinationCalendar.fromJson;

  @override
  String get calendarID;
  @override
  @JsonKey(ignore: true)
  _$$_DestinationCalendarCopyWith<_$_DestinationCalendar> get copyWith =>
      throw _privateConstructorUsedError;
}
