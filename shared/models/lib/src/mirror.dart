import 'package:freezed_annotation/freezed_annotation.dart';

part 'mirror.freezed.dart';
part 'mirror.g.dart';

@freezed
class Mirror with _$Mirror {
  const factory Mirror({
    required String id,
    required String title,
    @Default('') String description,
    String? owner,
    @Default(false) bool liked,
    @Default(false) bool subscribed,
    @Default(false) bool public,
    @Default(0) int likesCount,
    @Default(0) int subscribersCount,
    DateTime? creationDt,
    DateTime? lastModification,
    @Default([]) List<String> rulesIDs,
    @Default([]) List<String> sourceSchedulesIDs,
  }) = _Mirror;

  factory Mirror.fromJson(Map<String, dynamic> json) => _$MirrorFromJson(json);
}
