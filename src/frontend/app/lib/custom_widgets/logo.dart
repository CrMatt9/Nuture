import 'package:flutter/material.dart';
import 'package:app/size_config.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: SizeConfig.screenWidth*(205/375),
      height: SizeConfig.screenHeight*(61/812),
      child: Center(
        child: Text(
          'nuture',
          style: TextStyle(
            fontFamily: 'Montserrat Alternates',
            fontSize: SizeConfig.screenHeight*(50/812),
            color: Color(0xFF2323FF),
          ),
        ),
      ),
    );
  }
}
