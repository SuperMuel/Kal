import 'package:freezed_annotation/freezed_annotation.dart';
part 'mirror_subscription.freezed.dart';

@freezed
class MirrorSubscription with _$MirrorSubscription {
  const factory MirrorSubscription({
    required String id,
    required String mirrorID,
    DateTime? lastRefresh,
  }) = _MirrorSubscription;
}
