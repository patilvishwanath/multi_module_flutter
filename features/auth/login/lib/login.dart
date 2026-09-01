library;

export 'package:login/data/network/login_remote_service.dart';
export 'package:login/data/request/login_request.dart';
export 'package:login/data/response/login_response.dart';
export 'package:login/data/service/login_service.dart';
export 'package:login/data/mapper/login_mapper.dart';

export 'package:login/di/injectors.dart';

export 'package:login/domain/repository/login_repository.dart';
export 'package:login/domain/model/login_model.dart';
export 'package:login/domain/usecase/login_usecase.dart';

export 'package:login/presentation/bloc/login_bloc.dart';
export 'package:login/presentation/bloc/login_event.dart';
export 'package:login/presentation/bloc/login_state.dart';
export 'package:login/presentation/view/login_screen.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}
