library;

export 'package:data/network/api_safe_call.dart';
export 'package:data/network/network_info.dart';

export 'package:data/factory/dio_factory.dart';

export 'package:data/constants/constants.dart';

export 'package:data/error_handler/data_source.dart';
export 'package:data/error_handler/response_code.dart';
export 'package:data/error_handler/response_message.dart';
export 'package:data/error_handler/app_strings.dart';
export 'package:data/error_handler/data_source_extension.dart';
export 'package:data/error_handler/dio_error_handler.dart';

export 'package:data/di/data_module.dart';
export 'package:data/di/data_module_keys.dart';
export 'package:data/di/injectors.dart';

export 'package:data/env/app_env_config.dart';
//export 'package:data/di/get_it.dart';

// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}
