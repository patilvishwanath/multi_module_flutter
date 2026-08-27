library;

export 'di/injectors.dart';
export 'di/data_store_module.dart';
export 'provider/session_provider.dart';
export 'provider/preferences_provider.dart';
export 'provider/preferences_string.dart';
export 'provider/session_string.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}
