import 'package:models/src/mirror.dart';
import 'package:test/test.dart';

void main() {
  test('Value equality', () {
    final now = DateTime.now();
    final mirrorA = Mirror(
      id: 'id',
      title: 'title',
      owner: 'supermuel',
      creationDt: now,
      description: 'description',
      lastModification: now,
      liked: true,
      likesCount: 42,
      public: true,
      rulesIDs: ['id1', 'id2'],
      sourceSchedulesIDs: ['id3', 'id4'],
      subscribed: false,
      subscribersCount: 0,
    );
    final mirrorB = Mirror(
      id: 'id',
      title: 'title',
      owner: 'supermuel',
      creationDt: now,
      description: 'description',
      lastModification: now,
      liked: true,
      likesCount: 42,
      public: true,
      rulesIDs: ['id1', 'id2'],
      sourceSchedulesIDs: ['id3', 'id4'],
      subscribed: false,
      subscribersCount: 0,
    );
    expect(mirrorA, mirrorB);
  });
  test('default values are intuitive', () {
    const m = Mirror(id: 'id', title: 'title');
    expect(m.subscribersCount, 0);
    expect(m.likesCount, 0);
    expect(m.liked, false);
    expect(m.public, false);
    expect(m.subscribed, false);
    expect(m.description, '');
    expect(m.rulesIDs, isEmpty);
    expect(m.sourceSchedulesIDs, isEmpty);
    expect(m.creationDt, isNull);
    expect(m.lastModification, isNull);
    expect(m.owner, isNull);
  });

  group('Supports json serialization / deserialization', () {
    final now = DateTime.now();
    final someDay = now.subtract(const Duration(days: 32));

    final m = Mirror(
      id: 'ID',
      title: 'maths info',
      description: 'description',
      creationDt: now,
      lastModification: someDay,
      liked: true,
      likesCount: 3821,
      owner: 'superMuel',
      public: true,
      rulesIDs: ['id1'],
      sourceSchedulesIDs: ['id3', 'id8'],
      subscribed: false,
      subscribersCount: 10,
    );

    test('JSON keys', () {
      final json = m.toJson();

      final keys = [
        'id',
        'title',
        'description',
        'creationDt',
        'lastModification',
        'liked',
        'likesCount',
        'owner',
        'public',
        'rulesIDs',
        'sourceSchedulesIDs',
        'subscribed',
        'subscribersCount'
      ];

      for (final key in keys) {
        expect(json.containsKey(key), isTrue);
      }
    });

    test('Serializing then deserializing is endentity', () {
      final json = m.toJson();

      expect(m, Mirror.fromJson(json));
    });
  });
}
