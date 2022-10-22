Common objects that are validated or not at construction

## Features

- Supports value comparison
- Since instantiation, each value object has a valid/failed state

## Usage :

```dart
  final invalid = Username('78 PE2 ^^ ù !');
  invalid.getFailureOrCrash(); // UsernameFailure.mustStartWithALetter
  invalid.isValid(); // False
  invalid.getValueOrCrash(); // Crashes

  final valid = Username('SuperMuel');
  valid.isValid(); // True
  valid.getValueOrCrash(); // 'SuperMuel'
```

All objects excepts [ID](lib/src/id.dart) implements [ValueObject](lib/src/value_object.dart)
