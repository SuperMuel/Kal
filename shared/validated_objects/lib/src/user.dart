import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../validated_objects.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User.incomplete(Option<Username> usernameOption) =
      IncompleteUser;
  @With<IEntity>()
  const factory User.complete(ID id, Username username) = CompleteUser;
}
