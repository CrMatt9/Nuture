import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {


  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _loginController = TextEditingController();
  int actualLength = 0;

  void dispose() {
    _loginController.dispose();
    super.dispose();
  }

  int _getActualLenght() {
    actualLength = _loginController.text.length;
  }

  @override

  void initState() {
    super.initState();
    _loginController.addListener(_getActualLenght);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
        'Create an account',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Roboto Condensed',
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(23.5),
              child: TextField(
                inputFormatters: [LengthLimitingTextInputFormatter(10)],
                controller: _loginController,
                decoration: InputDecoration(
                  hintText: 'Username',
                  counterText: '$actualLength characters',
                  border: OutlineInputBorder(),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
