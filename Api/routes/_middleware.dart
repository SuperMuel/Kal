import 'package:dart_frog/dart_frog.dart';

enum Environment {
  dev,
  prod,
}

const environment = Environment.dev;

Handler middleware(Handler handler) {
  return (RequestContext context) async {
    // Execute code before request is handled.

    final request = context.request;
    // final authorizationHeader = request.headers['']
    print(await context.request.headers);

    // Forward the request to the respective handler.
    final response = await handler(context);

    // Execute code after request is handled.

    // Return a response.
    return response;
  }.use(requestLogger())
    ..use(provider<Environment>((_) => environment));
}
