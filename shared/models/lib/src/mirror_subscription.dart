import 'package:freezed_annotation/freezed_annotation.dart';

import 'destination_calendar.dart';

part 'mirror_subscription.freezed.dart';
part 'mirror_subscription.g.dart';

@freezed
class MirrorSubscription with _$MirrorSubscription {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory MirrorSubscription({
    required String id,
    required String mirrorID,
    DateTime? lastRefresh,
    DestinationCalendar? destinationCalendar,
    String? error,
  }) = _MirrorSubscription;

  factory MirrorSubscription.fromJson(Map<String, dynamic> json) =>
      _$MirrorSubscriptionFromJson(json);
}
