import 'package:api/configure_dependencies.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit()
void configureDependencies() => $initGetIt(GetIt.instance);
