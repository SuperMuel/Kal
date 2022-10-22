// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$User {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Username> usernameOption) incomplete,
    required TResult Function(ID id, Username username) complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Username> usernameOption)? incomplete,
    TResult Function(ID id, Username username)? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Username> usernameOption)? incomplete,
    TResult Function(ID id, Username username)? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncompleteUser value) incomplete,
    required TResult Function(CompleteUser value) complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IncompleteUser value)? incomplete,
    TResult Function(CompleteUser value)? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncompleteUser value)? incomplete,
    TResult Function(CompleteUser value)? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;
}

/// @nodoc
abstract class _$$IncompleteUserCopyWith<$Res> {
  factory _$$IncompleteUserCopyWith(
          _$IncompleteUser value, $Res Function(_$IncompleteUser) then) =
      __$$IncompleteUserCopyWithImpl<$Res>;
  $Res call({Option<Username> usernameOption});
}

/// @nodoc
class __$$IncompleteUserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$IncompleteUserCopyWith<$Res> {
  __$$IncompleteUserCopyWithImpl(
      _$IncompleteUser _value, $Res Function(_$IncompleteUser) _then)
      : super(_value, (v) => _then(v as _$IncompleteUser));

  @override
  _$IncompleteUser get _value => super._value as _$IncompleteUser;

  @override
  $Res call({
    Object? usernameOption = freezed,
  }) {
    return _then(_$IncompleteUser(
      usernameOption == freezed
          ? _value.usernameOption
          : usernameOption // ignore: cast_nullable_to_non_nullable
              as Option<Username>,
    ));
  }
}

/// @nodoc

class _$IncompleteUser implements IncompleteUser {
  const _$IncompleteUser(this.usernameOption);

  @override
  final Option<Username> usernameOption;

  @override
  String toString() {
    return 'User.incomplete(usernameOption: $usernameOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncompleteUser &&
            const DeepCollectionEquality()
                .equals(other.usernameOption, usernameOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(usernameOption));

  @JsonKey(ignore: true)
  @override
  _$$IncompleteUserCopyWith<_$IncompleteUser> get copyWith =>
      __$$IncompleteUserCopyWithImpl<_$IncompleteUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Username> usernameOption) incomplete,
    required TResult Function(ID id, Username username) complete,
  }) {
    return incomplete(usernameOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Username> usernameOption)? incomplete,
    TResult Function(ID id, Username username)? complete,
  }) {
    return incomplete?.call(usernameOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Username> usernameOption)? incomplete,
    TResult Function(ID id, Username username)? complete,
    required TResult orElse(),
  }) {
    if (incomplete != null) {
      return incomplete(usernameOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncompleteUser value) incomplete,
    required TResult Function(CompleteUser value) complete,
  }) {
    return incomplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IncompleteUser value)? incomplete,
    TResult Function(CompleteUser value)? complete,
  }) {
    return incomplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncompleteUser value)? incomplete,
    TResult Function(CompleteUser value)? complete,
    required TResult orElse(),
  }) {
    if (incomplete != null) {
      return incomplete(this);
    }
    return orElse();
  }
}

abstract class IncompleteUser implements User {
  const factory IncompleteUser(final Option<Username> usernameOption) =
      _$IncompleteUser;

  Option<Username> get usernameOption;
  @JsonKey(ignore: true)
  _$$IncompleteUserCopyWith<_$IncompleteUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompleteUserCopyWith<$Res> {
  factory _$$CompleteUserCopyWith(
          _$CompleteUser value, $Res Function(_$CompleteUser) then) =
      __$$CompleteUserCopyWithImpl<$Res>;
  $Res call({ID id, Username username});
}

/// @nodoc
class __$$CompleteUserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$CompleteUserCopyWith<$Res> {
  __$$CompleteUserCopyWithImpl(
      _$CompleteUser _value, $Res Function(_$CompleteUser) _then)
      : super(_value, (v) => _then(v as _$CompleteUser));

  @override
  _$CompleteUser get _value => super._value as _$CompleteUser;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
  }) {
    return _then(_$CompleteUser(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
    ));
  }
}

/// @nodoc

class _$CompleteUser with IEntity implements CompleteUser {
  const _$CompleteUser(this.id, this.username);

  @override
  final ID id;
  @override
  final Username username;

  @override
  String toString() {
    return 'User.complete(id: $id, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteUser &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$CompleteUserCopyWith<_$CompleteUser> get copyWith =>
      __$$CompleteUserCopyWithImpl<_$CompleteUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Username> usernameOption) incomplete,
    required TResult Function(ID id, Username username) complete,
  }) {
    return complete(id, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Username> usernameOption)? incomplete,
    TResult Function(ID id, Username username)? complete,
  }) {
    return complete?.call(id, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Username> usernameOption)? incomplete,
    TResult Function(ID id, Username username)? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(id, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncompleteUser value) incomplete,
    required TResult Function(CompleteUser value) complete,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IncompleteUser value)? incomplete,
    TResult Function(CompleteUser value)? complete,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncompleteUser value)? incomplete,
    TResult Function(CompleteUser value)? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class CompleteUser implements User, IEntity {
  const factory CompleteUser(final ID id, final Username username) =
      _$CompleteUser;

  ID get id;
  Username get username;
  @JsonKey(ignore: true)
  _$$CompleteUserCopyWith<_$CompleteUser> get copyWith =>
      throw _privateConstructorUsedError;
}
