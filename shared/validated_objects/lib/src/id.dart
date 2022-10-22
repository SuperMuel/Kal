import 'package:uuid/uuid.dart';

/// Generates a uuid v4 at construction
class ID {
  final String id;

  ID() : id = Uuid().v4();

  const ID.fromTrustedSource(this.id);
}
