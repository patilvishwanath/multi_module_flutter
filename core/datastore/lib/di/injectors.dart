
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:datastore/di/injectors.config.dart';

@InjectableInit()
void configureDataStoreDependencies(GetIt getIt, String environment) => getIt.init(environment: environment);