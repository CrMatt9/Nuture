import 'package:app/blocs/bloc_authentication/authentication_bloc.dart';
import 'package:flutter/material.dart';

import 'package:app/screens/loading.dart';
import 'package:app/screens/welcome.dart';
import 'package:app/screens/home.dart';
import 'package:app/screens/login.dart';
import 'package:app/screens/register.dart';
import 'package:app/screens/splash.dart';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'services/users/repository/user_repository.dart';

class SimpleBlocDelegate extends BlocDelegate {
  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    print(event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }

  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
  }
}


void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  final userRepository = UserRepository();


  runApp(
    BlocProvider<AuthenticationBloc>(
      create: (context) {
        return AuthenticationBloc(
          userRepository: userRepository
        )..add(AppStarted());
      },
      child: App(userRepository: userRepository,),
    )
  );
}

class App extends StatelessWidget {
  final UserRepository userRepository;

  App({Key key, @required this.userRepository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/welcome',
      routes: {
        '/loading' : (context) =>  Loading(),
        '/welcome' : (context) => Welcome(),
        '/home' : (context) => Home(),
        '/login' : (context) => Login(userRepository: userRepository,),
        '/register' : (context) => Register(),
        '/splash' : (context) => Splash(),
      },
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is AuthenticationUnintialized) {
            return Splash();
          }
          if (state is AuthenticationAuthenticated) {
            return Home();
          }
          if (state is AuthenticationUnauthenticated) {
            return Welcome();
          }
          if (state is AuthenticationLoading) {
            return Loading();
          }
        },
      ),
    );
  }
}
