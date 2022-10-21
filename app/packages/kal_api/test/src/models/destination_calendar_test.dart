import 'package:flutter_test/flutter_test.dart';
import 'package:kal_api/src/models/destination_calendar.dart';

void main() {
  const dc = DestinationCalendar(calendarID: 'calendarID');
  test('supports value comparison', () {
    // ignore: prefer_const_constructors
    final copy = DestinationCalendar(calendarID: 'calendarID');
    expect(dc, copy);
  });

  group('Supports JSON serialization/deserialization', () {
    final json = dc.toJson();
    test('JSON keys', () {
      expect(json.keys, contains('calendarID'));
    });
    test('Serialization / Deserialization is identity', () {
      expect(dc, DestinationCalendar.fromJson(json));
    });
  });
}
