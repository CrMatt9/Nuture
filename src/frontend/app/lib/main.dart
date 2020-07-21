import 'package:flutter/material.dart';
import 'package:app/screens/loading.dart';
import 'package:app/screens/login.dart';
import 'package:app/screens/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/login',
    routes: {
      '/' : (context) =>  Loading(),
      '/login' : (context) => Login(),
      '/home' : (context) => Home(),
    },
  ));
}