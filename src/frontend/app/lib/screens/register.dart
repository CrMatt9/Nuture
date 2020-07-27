import 'package:app/custom_widgets/myButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/size_config.dart';
import 'package:app/custom_widgets/customColors.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
          'Create an account',
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
                    hintText: 'Full name',
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
                    hintText: 'email',
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
                    helperText: '8+ characters'
                  )
              ),
            ),
            Padding(
              padding: new EdgeInsets.fromLTRB(
                SizeConfig.screenWidth*(264/375),
                SizeConfig.screenHeight*(263/812),
                SizeConfig.screenWidth*(24/375),
                0,
              ),
              child: myButton(
                text: 'Next',
                textColor: Colors.white,
                color: corpBlue,
                weight: 87,
              ),
            )
          ],
        ),
      ),
    );
  }
}
