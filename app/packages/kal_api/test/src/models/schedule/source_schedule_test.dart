// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:kal_api/src/models/schedule/source_schedule.dart';

void main() {
  test('Some fields are nullable', () {
    const dc = SourceSchedule(id: 'id');
    expect(dc.icsUrl, isNull);
    expect(dc.title, isNull);
  });
  test('supports value comparison', () {
    final dc1 = SourceSchedule(id: 'id', icsUrl: 'icsUrl', title: 'title');

    final dc2 = SourceSchedule(id: 'id', icsUrl: 'icsUrl', title: 'title');
    expect(dc1, dc2);
  });

  group('Supports JSON serialization/deserialization', () {
    const dc = SourceSchedule(id: 'id', icsUrl: 'icsUrl', title: 'title');
    final json = dc.toJson();

    test('Json keys', () {
      final keys = ['id', 'title', 'icsUrl'];
      expect(json.keys, containsAll(keys));
    });
    test('Serialization / Deserialization is identity', () {
      expect(dc, SourceSchedule.fromJson(json));
    });

    group('Null values', () {
      const dc = SourceSchedule(id: 'id');
      final json = dc.toJson();
      test('Null values are specified in JSON', () {
        final keys = ['title', 'icsUrl'];
        expect(json.keys, containsAll(keys));

        for (final key in keys) {
          expect(json[key], isNull);
        }
      });
      test('Null values in JSON', () {
        final json = {'id': 'id', 'title': null, 'icsUrl': null};
        expect(SourceSchedule.fromJson(json), dc);
      });
    });
  });
}
