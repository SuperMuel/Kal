import 'package:freezed_annotation/freezed_annotation.dart';

part 'source_schedule.freezed.dart';
part 'source_schedule.g.dart';

@freezed
class SourceSchedule with _$SourceSchedule {
  const factory SourceSchedule({
    required String id,
    String? title,
    String? icsUrl,
  }) = _SourceSchedule;

  factory SourceSchedule.fromJson(Map<String, dynamic> json) =>
      _$SourceScheduleFromJson(json);
}
