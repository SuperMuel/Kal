import 'package:flutter_test/flutter_test.dart';
import 'package:kal_api/src/models/schedule/schedule_provider.dart';
import 'package:kal_api/src/models/schedule/source_schedule.dart';

void main() {
  const minimumSc = ScheduleProvider(id: 'id');
  const sc1 = SourceSchedule(
    id: 'id1',
    icsUrl: 'url.com',
    title: 'title',
  );
  const sc2 = SourceSchedule(
    id: 'id2',
    icsUrl: 'url.com',
    title: 'title',
  );
  group('Default values', () {
    test('Empty lists as default values for lists', () {
      expect(minimumSc.childrenScheduleProvidersIDs, isEmpty);
      expect(minimumSc.sourceSchedules, isEmpty);
    });

    test('Title is null by default', () {
      expect(minimumSc.title, isNull);
    });
  });

  test('supports value comparison', () {
    // ignore: prefer_const_constructors
    final sourceSchedule1 = SourceSchedule(id: 'sourceSchedule1');
    // ignore: prefer_const_constructors
    final sourceSchedule2 = SourceSchedule(id: 'sourceSchedule2');

    final a1 = ScheduleProvider(
      id: 'id',
      title: 'title',
      childrenScheduleProvidersIDs: ['id1', 'id2'],
      sourceSchedules: [sourceSchedule1, sourceSchedule2],
    );
    final a2 = ScheduleProvider(
      id: 'id',
      title: 'title',
      childrenScheduleProvidersIDs: ['id1', 'id2'],
      sourceSchedules: [sourceSchedule1, sourceSchedule2],
    );

    expect(a1, a2);
  });

  group('Supports JSON serialization / deserialization', () {
    const sc = ScheduleProvider(
      id: 'id',
      title: 'title',
      childrenScheduleProvidersIDs: ['id1', 'id2'],
      sourceSchedules: [sc1, sc2],
    );
    final json = sc.toJson();
    test('Serialization / deserialization is identity', () {
      expect(ScheduleProvider.fromJson(json), sc);
    });

    test('JSON keys', () {
      final keys = [
        'id',
        'title',
        'childrenScheduleProvidersIDs',
        'sourceSchedules'
      ];
      expect(json.keys, containsAll(keys));
    });
  });
}
