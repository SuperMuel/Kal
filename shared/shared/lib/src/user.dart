import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/src/i_entity.dart';

import 'id.dart';
import 'username.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User.incomplete(Option<Username> usernameOption) =
      IncompleteUser;
  @With<IEntity>()
  const factory User.complete(ID id, Username username) = CompleteUser;
}
