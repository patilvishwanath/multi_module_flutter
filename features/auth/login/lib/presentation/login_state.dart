import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  final String? userNameError;
  final String? passwordError;
  final String? errorMessage;

  const LoginState({this.userNameError, this.passwordError, this.errorMessage});

  LoginState copywith({
    String? userNameError,
    String? passwordError,
    String? errorMessage,
  }) {
    return LoginState(
      userNameError: userNameError,
      passwordError: passwordError,
      errorMessage: errorMessage,
    );
  }

  @override
  List<Object?> get props => [userNameError, passwordError, errorMessage];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginInValid extends LoginState {
  final String? userNameError;
  final String? passwordError;

  const LoginInValid({this.userNameError, this.passwordError})
    : super(userNameError: userNameError, passwordError: passwordError);
}

class LoginSuccess extends LoginState {}

class LoginFailure extends LoginState {
  @override
  final String? errorMessage;
  const LoginFailure({this.errorMessage}) : super(errorMessage: errorMessage);
}
