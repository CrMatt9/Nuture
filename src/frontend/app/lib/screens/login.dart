import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:app/size_config.dart';
import 'package:app/custom_widgets/login_form.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/blocs/bloc_authentication/authentication_bloc.dart';
import 'package:app/blocs/bloc_login/login_bloc.dart';
import 'package:app/services/users/repository/user_repository.dart';

class Login extends StatelessWidget {

  final UserRepository userRepository;

  Login({Key key, @required this.userRepository})
      : assert(userRepository != null), super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Login',
          style: TextStyle(
            color: Colors.black,
            fontSize: SizeConfig.screenWidth*(20/375),
            fontFamily: 'Roboto Condensed',
          ),
        ),
        elevation: 0,
      ),
      body: BlocProvider(
        create: (context) {
          return LoginBloc(
            authenticationBloc: BlocProvider.of<AuthenticationBloc>(context),
            userRepository: userRepository,
          );
        },

        child: Scaffold(
          resizeToAvoidBottomPadding: false,
          body: Center(
            child: Column(
              children: <Widget>[
                Padding(
                    padding: new EdgeInsets.fromLTRB(
                      SizeConfig.screenWidth*(23.5/375),
                      SizeConfig.screenHeight*(34/812),
                      SizeConfig.screenWidth*(23.5/375),
                      0,
                    ),
                    child: LoginForm(),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}