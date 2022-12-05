import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  const CalculatorButton({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      minimumSize: Size(70, 70),
      backgroundColor: Color(0xFF8ac4d0),
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
            onPressed: () {},
            child:
                Text(text, style: TextStyle(color: Colors.white, fontSize: 24))),
      ),
    );
  }
}