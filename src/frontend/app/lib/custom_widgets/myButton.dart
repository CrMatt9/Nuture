import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/size_config.dart';
import 'package:meta/meta.dart';


class myButton extends StatefulWidget {
  String text;
  Color textColor;
  Color color;
  double weight;
  final GestureTapCallback onPressed;

  myButton({ this.text, @required this.textColor, @required this.color, @required this.weight, this.onPressed });

  @override
  _myButtonState createState() => _myButtonState();
}

class _myButtonState extends State<myButton> {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ButtonTheme(
      minWidth: SizeConfig.screenWidth*(widget.weight/375),
      height: SizeConfig.screenHeight*(40/812),
      child: FlatButton(
        onPressed: () {
          widget.onPressed();
        },
        color: widget.color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        child: Text(
          '${widget.text}',
          style: TextStyle(
            fontSize: SizeConfig.screenHeight*(16/812),
            color: widget.textColor,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

