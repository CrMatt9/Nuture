import 'package:flutter/material.dart';
import 'package:app/custom_widgets/logo.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  //Data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 93),
              child: Logo(),
            ),
            SizedBox(height: 8,),
            Text(
              'Reach your goals and maintain them with',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto Condensed',
              ),
            ),
            SizedBox(height: 8,),
            Text(
              'scientific help and evidence',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto Condensed',
              ),
            ),
            SizedBox(height: 83.23),
            SvgPicture.asset("assets/images/breakfast-morning-exercise.svg",
              height: 220,
            ),
            SizedBox(height: 50),
            FlatButton(
              onPressed: () {},
              color: Color(0xFF2323FF),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text(
                'Create an account',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 5),
            FlatButton(
              onPressed: () {},
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text(
                'I have and account',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF2323FF),
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
