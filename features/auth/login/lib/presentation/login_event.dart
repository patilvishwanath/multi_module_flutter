import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class UserNameUpdated extends LoginEvent {
  final String userName;
  const UserNameUpdated(this.userName);
  @override
  List<Object> get props => [userName];
}

class PasswordUpdated extends LoginEvent {
  final String password;
  const PasswordUpdated(this.password);
  @override
  List<Object> get props => [password];
}

class LoginButtonPressed extends LoginEvent {
  final String userName;
  final String password;
  const LoginButtonPressed(this.userName, this.password);
  @override
  List<Object> get props => [userName, password];
}
