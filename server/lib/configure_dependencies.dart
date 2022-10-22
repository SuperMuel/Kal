import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:server/configure_dependencies.config.dart';

@InjectableInit()
void configureDependencies() => $initGetIt(GetIt.instance);
