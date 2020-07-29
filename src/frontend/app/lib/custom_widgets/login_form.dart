import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/blocs/bloc_login/login_bloc.dart';
import 'package:app/size_config.dart';
import 'package:app/custom_widgets/myButton.dart';
import 'package:app/custom_widgets/customColors.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _onLoginButtonPressed() {
      BlocProvider.of<LoginBloc>(context).add(LoginButtonPressed(
        username: _usernameController.text,
        password: _passwordController.text,
      ));
    }
    SizeConfig().init(context);

    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginFaliure) {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('${state.error}'),
            backgroundColor: Colors.red,
          ));
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Container (
            child: Form(
              child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.person),
                  ),
                  controller: _usernameController,
                ),
                SizedBox(height: SizeConfig.screenHeight*(6/812),),
                TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.lock),
                    ),
                  controller: _passwordController,
                  obscureText: true,
                ),
                SizedBox(height: SizeConfig.screenHeight*(50/812)),
                Center(
                  child: myButton(
                    color: corpBlue,
                    text: 'Login',
                    textColor: Colors.white,
                    weight: SizeConfig.screenWidth*(107/375),
                    onPressed: state is! LoginLoading ?
                    _onLoginButtonPressed : null,
                    ),
                  ),
                SizedBox(height: SizeConfig.screenHeight*(6/812),),
                Center(
                  child: state is LoginLoading
                      ? CircularProgressIndicator()
                      : null,
                )
              ],
              ),
            ),
          );
        }
      )
    );
  }
}
