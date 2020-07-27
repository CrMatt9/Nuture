import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app/size_config.dart';
import 'package:app/custom_widgets/myButton.dart';
import 'package:app/custom_widgets/customColors.dart';


class Login extends StatefulWidget {


  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override

  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
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
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Username',
                  border: OutlineInputBorder(),
                )
              ),
            ),
            Padding(
              padding: new EdgeInsets.fromLTRB(
                SizeConfig.screenWidth*(23.5/375),
                SizeConfig.screenHeight*(40/812),
                SizeConfig.screenWidth*(23.5/375),
                0,
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                )
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight*(50/812)),
            Center(child: myButton(color: corpBlue, text: 'Login', textColor: Colors.white, weight: 107,)),
          ],
        ),
      ),
    );
  }
}
