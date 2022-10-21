import 'package:models/src/destination_calendar.dart';
import 'package:test/test.dart';

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
