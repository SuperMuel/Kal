// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleProvider _$ScheduleProviderFromJson(Map<String, dynamic> json) {
  return _ScheduleProvider.fromJson(json);
}

/// @nodoc
mixin _$ScheduleProvider {
  String get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleProviderCopyWith<ScheduleProvider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleProviderCopyWith<$Res> {
  factory $ScheduleProviderCopyWith(
          ScheduleProvider value, $Res Function(ScheduleProvider) then) =
      _$ScheduleProviderCopyWithImpl<$Res, ScheduleProvider>;
  @useResult
  $Res call({String id, String? title});
}

/// @nodoc
class _$ScheduleProviderCopyWithImpl<$Res, $Val extends ScheduleProvider>
    implements $ScheduleProviderCopyWith<$Res> {
  _$ScheduleProviderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScheduleProviderCopyWith<$Res>
    implements $ScheduleProviderCopyWith<$Res> {
  factory _$$_ScheduleProviderCopyWith(
          _$_ScheduleProvider value, $Res Function(_$_ScheduleProvider) then) =
      __$$_ScheduleProviderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? title});
}

/// @nodoc
class __$$_ScheduleProviderCopyWithImpl<$Res>
    extends _$ScheduleProviderCopyWithImpl<$Res, _$_ScheduleProvider>
    implements _$$_ScheduleProviderCopyWith<$Res> {
  __$$_ScheduleProviderCopyWithImpl(
      _$_ScheduleProvider _value, $Res Function(_$_ScheduleProvider) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
  }) {
    return _then(_$_ScheduleProvider(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleProvider implements _ScheduleProvider {
  _$_ScheduleProvider({required this.id, this.title});

  factory _$_ScheduleProvider.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleProviderFromJson(json);

  @override
  final String id;
  @override
  final String? title;

  @override
  String toString() {
    return 'ScheduleProvider(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleProvider &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleProviderCopyWith<_$_ScheduleProvider> get copyWith =>
      __$$_ScheduleProviderCopyWithImpl<_$_ScheduleProvider>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleProviderToJson(
      this,
    );
  }
}

abstract class _ScheduleProvider implements ScheduleProvider {
  factory _ScheduleProvider({required final String id, final String? title}) =
      _$_ScheduleProvider;

  factory _ScheduleProvider.fromJson(Map<String, dynamic> json) =
      _$_ScheduleProvider.fromJson;

  @override
  String get id;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleProviderCopyWith<_$_ScheduleProvider> get copyWith =>
      throw _privateConstructorUsedError;
}
