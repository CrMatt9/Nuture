import 'package:flutter/material.dart';
import 'package:app/screens/loading.dart';
import 'package:app/screens/welcome.dart';
import 'package:app/screens/home.dart';
import 'package:app/screens/login.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/welcome',
    routes: {
      '/' : (context) =>  Loading(),
      '/welcome' : (context) => Welcome(),
      '/home' : (context) => Home(),
      '/login' : (context) => Login(),
    },
  ));
}