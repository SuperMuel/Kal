// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'i_user_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserRepositoryFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() usernameAlreadyExists,
    required TResult Function() userNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? usernameAlreadyExists,
    TResult? Function()? userNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? usernameAlreadyExists,
    TResult Function()? userNotFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameAlreadyExists value)
        usernameAlreadyExists,
    required TResult Function(_UserNotFound value) userNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UsernameAlreadyExists value)? usernameAlreadyExists,
    TResult? Function(_UserNotFound value)? userNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameAlreadyExists value)? usernameAlreadyExists,
    TResult Function(_UserNotFound value)? userNotFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRepositoryFailureCopyWith<$Res> {
  factory $UserRepositoryFailureCopyWith(UserRepositoryFailure value,
          $Res Function(UserRepositoryFailure) then) =
      _$UserRepositoryFailureCopyWithImpl<$Res, UserRepositoryFailure>;
}

/// @nodoc
class _$UserRepositoryFailureCopyWithImpl<$Res,
        $Val extends UserRepositoryFailure>
    implements $UserRepositoryFailureCopyWith<$Res> {
  _$UserRepositoryFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UsernameAlreadyExistsCopyWith<$Res> {
  factory _$$_UsernameAlreadyExistsCopyWith(_$_UsernameAlreadyExists value,
          $Res Function(_$_UsernameAlreadyExists) then) =
      __$$_UsernameAlreadyExistsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UsernameAlreadyExistsCopyWithImpl<$Res>
    extends _$UserRepositoryFailureCopyWithImpl<$Res, _$_UsernameAlreadyExists>
    implements _$$_UsernameAlreadyExistsCopyWith<$Res> {
  __$$_UsernameAlreadyExistsCopyWithImpl(_$_UsernameAlreadyExists _value,
      $Res Function(_$_UsernameAlreadyExists) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UsernameAlreadyExists implements _UsernameAlreadyExists {
  const _$_UsernameAlreadyExists();

  @override
  String toString() {
    return 'UserRepositoryFailure.usernameAlreadyExists()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UsernameAlreadyExists);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() usernameAlreadyExists,
    required TResult Function() userNotFound,
  }) {
    return usernameAlreadyExists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? usernameAlreadyExists,
    TResult? Function()? userNotFound,
  }) {
    return usernameAlreadyExists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? usernameAlreadyExists,
    TResult Function()? userNotFound,
    required TResult orElse(),
  }) {
    if (usernameAlreadyExists != null) {
      return usernameAlreadyExists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameAlreadyExists value)
        usernameAlreadyExists,
    required TResult Function(_UserNotFound value) userNotFound,
  }) {
    return usernameAlreadyExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UsernameAlreadyExists value)? usernameAlreadyExists,
    TResult? Function(_UserNotFound value)? userNotFound,
  }) {
    return usernameAlreadyExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameAlreadyExists value)? usernameAlreadyExists,
    TResult Function(_UserNotFound value)? userNotFound,
    required TResult orElse(),
  }) {
    if (usernameAlreadyExists != null) {
      return usernameAlreadyExists(this);
    }
    return orElse();
  }
}

abstract class _UsernameAlreadyExists implements UserRepositoryFailure {
  const factory _UsernameAlreadyExists() = _$_UsernameAlreadyExists;
}

/// @nodoc
abstract class _$$_UserNotFoundCopyWith<$Res> {
  factory _$$_UserNotFoundCopyWith(
          _$_UserNotFound value, $Res Function(_$_UserNotFound) then) =
      __$$_UserNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserNotFoundCopyWithImpl<$Res>
    extends _$UserRepositoryFailureCopyWithImpl<$Res, _$_UserNotFound>
    implements _$$_UserNotFoundCopyWith<$Res> {
  __$$_UserNotFoundCopyWithImpl(
      _$_UserNotFound _value, $Res Function(_$_UserNotFound) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserNotFound implements _UserNotFound {
  const _$_UserNotFound();

  @override
  String toString() {
    return 'UserRepositoryFailure.userNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() usernameAlreadyExists,
    required TResult Function() userNotFound,
  }) {
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? usernameAlreadyExists,
    TResult? Function()? userNotFound,
  }) {
    return userNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? usernameAlreadyExists,
    TResult Function()? userNotFound,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameAlreadyExists value)
        usernameAlreadyExists,
    required TResult Function(_UserNotFound value) userNotFound,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UsernameAlreadyExists value)? usernameAlreadyExists,
    TResult? Function(_UserNotFound value)? userNotFound,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameAlreadyExists value)? usernameAlreadyExists,
    TResult Function(_UserNotFound value)? userNotFound,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class _UserNotFound implements UserRepositoryFailure {
  const factory _UserNotFound() = _$_UserNotFound;
}
