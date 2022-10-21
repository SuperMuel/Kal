import 'package:freezed_annotation/freezed_annotation.dart';

part 'destination_calendar.freezed.dart';
part 'destination_calendar.g.dart';

@freezed

/// Describes one of the user's calendars to which put the events into.
///
/// For a google calendar, [calendarID] is the id of the calendar as specified
/// at https://developers.google.com/calendar/api/v3/reference/calendarList
///
class DestinationCalendar with _$DestinationCalendar {
  const factory DestinationCalendar({
    required String calendarID,
  }) = _DestinationCalendar;

  factory DestinationCalendar.fromJson(Map<String, dynamic> json) =>
      _$DestinationCalendarFromJson(json);
}
