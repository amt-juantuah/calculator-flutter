import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callback;
  const CalculatorButton(
      {required this.text,
      required this.fillColor,
      required this.textColor,
      required this.textSize,
      required this.callback,
      super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      minimumSize: Size(70, 70),
      backgroundColor: Color(fillColor),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    );
    return Container(
      // add margin to each button
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: TextButton(
            style: flatButtonStyle,
            onPressed: () {
              callback;
            },
            child: Text(text,
                style: TextStyle(color: Color(textColor), fontSize: textSize))),
      ),
    );
  }
}
