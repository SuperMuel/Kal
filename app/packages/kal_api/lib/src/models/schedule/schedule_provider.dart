import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_provider.freezed.dart';
part 'schedule_provider.g.dart';

@freezed
class ScheduleProvider with _$ScheduleProvider {
  factory ScheduleProvider({
    required String id,
    String? title,
  }) = _ScheduleProvider;

  factory ScheduleProvider.fromJson(Map<String, dynamic> json) =>
      _$ScheduleProviderFromJson(json);
}
