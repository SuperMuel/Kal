import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kal_api/src/models/schedule/source_schedule.dart';

part 'schedule_provider.freezed.dart';
part 'schedule_provider.g.dart';

/// A folder, than can point to other folders, each containing some
/// [SourceSchedule] objetcs.
@freezed
class ScheduleProvider with _$ScheduleProvider {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory ScheduleProvider({
    required String id,
    String? title,
    @Default([]) List<String> childrenScheduleProvidersIDs,
    @Default([]) List<SourceSchedule> sourceSchedules,
  }) = _ScheduleProvider;

  factory ScheduleProvider.fromJson(Map<String, dynamic> json) =>
      _$ScheduleProviderFromJson(json);
}
