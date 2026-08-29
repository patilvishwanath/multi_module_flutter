import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../data/request/login_request.dart';
import '../domain/usecase/login_usecase.dart';
import 'login_event.dart';
import 'login_state.dart';

@Injectable()
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required this.loginUseCase}) : super(LoginInitial()) {
    on<UserNameUpdated>((event, emit) {
      final userNameError = validateUserName(event.userName);

      emit(
        LoginInValid(
          userNameError: userNameError,
          passwordError: (state is LoginInValid) ? state.passwordError : null,
        ),
      );
    });
    on<PasswordUpdated>((event, emit) {
      final passwordError = validatePassword(event.password);

      emit(
        LoginInValid(
          userNameError: (state is LoginInValid) ? state.userNameError : null,
          passwordError: passwordError,
        ),
      );
    });
    on<LoginButtonPressed>((event, emit) async {
      print('LoginButtonPressed');

      final userNameError = validateUserName(event.userName);
      final passwordError = validatePassword(event.password);

      if (userNameError != null || passwordError != null) {
        print('LoginInValid');

        emit(
          LoginInValid(
            userNameError: userNameError,
            passwordError: passwordError,
          ),
        );
      } else {
        print('else');

        emit(LoginLoading());

        final request = LoginRequest("test@123.gmail.com", "test@123");

        final result = await loginUseCase.execute(request);
        result.fold(
          (failure) {
            print(failure.message);
            emit(LoginFailure(errorMessage: failure.message));
          },
          (loginModel) {
            if (kDebugMode) {
              print('LoginModel response--${loginModel.name}');
            }
            emit(LoginSuccess());
          },
        );
      }
    });
  }

  final LoginUseCase loginUseCase;

  String? validateUserName(String userName) {
    if (userName.isEmpty) {
      return 'User name cannot be empty';
    } else if (userName.length < 3) {
      return 'User name must be at least 3 characters';
    }
    return null;
  }

  String? validatePassword(String password) {
    if (password.isEmpty) {
      return 'Password cannot be empty';
    } else if (password.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }
}
