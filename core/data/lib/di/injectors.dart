import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:data/di/injectors.config.dart';

@InjectableInit()
Future<void> configureDataDependencies(GetIt getIt, String environment) async =>
    getIt.init(environment: environment);
