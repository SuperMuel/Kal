import 'package:models/src/destination_calendar.dart';
import 'package:models/src/mirror_subscription.dart';
import 'package:test/test.dart';

void main() {
  test('Some fields are nullable', () {
    const mirrorSub = MirrorSubscription(id: 'id', mirrorID: 'mirrorID');
    expect(mirrorSub.destinationCalendar, isNull);
    expect(mirrorSub.error, isNull);
    expect(mirrorSub.lastRefresh, isNull);
  });

  test('supports value comparison', () {
    final a = MirrorSubscription(
      id: 'id',
      mirrorID: 'mirrorID',
      destinationCalendar: const DestinationCalendar(calendarID: 'calendarID'),
      error: 'error',
      lastRefresh: DateTime(2022, 12, 24, 12),
    );

    final b = MirrorSubscription(
      id: 'id',
      mirrorID: 'mirrorID',
      destinationCalendar: const DestinationCalendar(calendarID: 'calendarID'),
      error: 'error',
      lastRefresh: DateTime(2022, 12, 24, 12),
    );
    expect(a, b);
  });

  group('Supports json serialization / deserialization', () {
    const destinationCalendar = DestinationCalendar(calendarID: 'calendarID');
    final mirrorSub = MirrorSubscription(
      id: 'id',
      mirrorID: 'mirrorID',
      destinationCalendar: destinationCalendar,
      error: 'error',
      lastRefresh: DateTime(2022, 12, 24, 12),
    );
    final json = mirrorSub.toJson();

    test('Json keys', () {
      final keys = [
        'id',
        'mirrorID',
        'destinationCalendar',
        'error',
        'lastRefresh'
      ];

      expect(json.keys, containsAll(keys));
    });
    group('Nested objects are serialized', () {
      test('destinationCalendar field can be deserialized', () {
        final destinationCalendarJson = json['destinationCalendar'];

        final deserialized = DestinationCalendar.fromJson(
          destinationCalendarJson as Map<String, dynamic>,
        );
        expect(deserialized, destinationCalendar);
      });
    });
  });
}
