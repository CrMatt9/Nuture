import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app/size_config.dart';
import 'package:app/custom_widgets/logo.dart';

class Splash extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: new EdgeInsets.only(top: SizeConfig.screenHeight*(157/812)),
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
            SvgPicture.asset(
              "assets/images/breakfast-morning-exercise.svg",
              height: SizeConfig.screenHeight*(272.74/812),
              width: SizeConfig.screenWidth*(275.1/375),
            ),
          ],
        ),
      ),
    );
  }
}