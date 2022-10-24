/// Support for doing something awesome.
///
/// More dartdocs go here.
library shared;

export 'src/value_object.dart'
    show
        ValueObject,
        UnexpectedFailedValueObjectError,
        UnexpectedValidValueObjectError;
export 'src/username.dart' show Username, UsernameFailure;
export 'src/description.dart' show Description, DescriptionFailure;
export 'src/title50.dart' show Title50, Title50Failure;
export 'src/user.dart' show CompleteUser, IncompleteUser, User;
export 'src/id.dart' show ID;
export 'src/i_entity.dart' show IEntity;
