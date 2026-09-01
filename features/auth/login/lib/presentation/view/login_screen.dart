import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/presentation/bloc/login_bloc.dart';

import '../bloc/login_event.dart';
import '../bloc/login_state.dart';


class LoginScreen extends StatelessWidget {
  LoginScreen({super.key, required this.loginBloc});

  final LoginBloc loginBloc;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Screen")),
      body: BlocProvider<LoginBloc>(
        create: (context) => loginBloc,
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: usernameController,
                    onChanged: (value) {
                      context.read<LoginBloc>().add(UserNameUpdated(value));
                    },
                    decoration: InputDecoration(
                      labelText: "Username",
                      errorText: state is LoginInValid
                          ? state.userNameError
                          : null,
                    ),
                  ),

                  TextField(
                    controller: passwordController,
                    onChanged: (value) {
                      context.read<LoginBloc>().add(PasswordUpdated(value));
                    },
                    decoration: InputDecoration(
                      labelText: "Password",
                      errorText: state is LoginInValid
                          ? state.passwordError
                          : null,
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  ElevatedButton(
                    onPressed: () {
                      print('onPressed');
                      final username = usernameController.text;
                      final password = passwordController.text;
                      context.read<LoginBloc>().add(
                        LoginButtonPressed(username, password),
                      );
                    },
                    child: Text('Login'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
