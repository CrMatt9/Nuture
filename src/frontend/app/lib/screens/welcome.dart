import 'package:flutter/material.dart';
import 'package:app/custom_widgets/logo.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app/size_config.dart';
import 'package:app/custom_widgets/myButton.dart';
import 'package:app/custom_widgets/customColors.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {

  //Data

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: new EdgeInsets.only(top: SizeConfig.screenHeight*(113/812)),
              child: Logo(),
            ),
            SizedBox(height: SizeConfig.screenHeight*(8/812),),
            Text(
              'Reach your goals and maintain them with',
              style: TextStyle(
                fontSize: SizeConfig.screenWidth*(14/375),
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto Condensed',
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight*(8/812),),
            Text(
              'scientific help and evidence',
              style: TextStyle(
                fontSize: SizeConfig.screenWidth*(14/375),
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto Condensed',
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight*(103.23/812)),
            SvgPicture.asset("assets/images/breakfast-morning-exercise.svg",
            ),
            SizedBox(height: SizeConfig.screenHeight*(82.03/812)),
            myButton(
              textColor: Colors.white,
              color: corpBlue,
              text: 'Create an account',
              weight: SizeConfig.screenWidth*(198/375) ,
              onPressed: () async {
                dynamic result = Navigator.pushNamed(context, '/register');
              },
            ),
            SizedBox(height: SizeConfig.screenHeight*(16/812)),
            myButton (
              textColor: corpBlue,
              color: Colors.white,
              text: 'I have an account',
              weight: SizeConfig.screenWidth*(198/375) ,
              onPressed: () async {
                dynamic result = Navigator.pushNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
