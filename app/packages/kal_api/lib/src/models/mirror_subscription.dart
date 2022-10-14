import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:kal_api/src/models/destination_calendar.dart';
part 'mirror_subscription.freezed.dart';

@freezed
class MirrorSubscription with _$MirrorSubscription {
  const factory MirrorSubscription({
    required String id,
    required String mirrorID,
    DateTime? lastRefresh,
    DestinationCalendar? destinationCalendar,
    String? error,
  }) = _MirrorSubscription;
}
