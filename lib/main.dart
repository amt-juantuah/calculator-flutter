import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'calculator_btn.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int firstNumber = 0;
  int secondNumber = 0;
  String history = "";
  String textToDisplay = "";
  String results = "";
  String operation = "";

  void btnOnClick(String buttonValue) {
    print(buttonValue);

    if (buttonValue == "AC") {
      textToDisplay = "";
      firstNumber = 0;
      secondNumber = 0;
      results = "";
      history = "";
    } else if (buttonValue == "C") {
      textToDisplay = "";
      firstNumber = 0;
      secondNumber = 0;
      results = "";
    } else if (buttonValue == "+" ||
        buttonValue == "-" ||
        buttonValue == "/" ||
        buttonValue == "x") {
      firstNumber = int.parse(textToDisplay);
      results = "";
      operation = buttonValue;
    } else if (buttonValue == "=") {
      secondNumber = int.parse(textToDisplay);
      if (operation == "+") {
        results = (firstNumber + secondNumber).toString();
        history = firstNumber.toString() + operation + secondNumber.toString();
      } else if (operation == "-") {
        results = (firstNumber - secondNumber).toString();
        history = firstNumber.toString() + operation + secondNumber.toString();
      } else if (operation == "/") {
        results = (firstNumber / secondNumber).toString();
        history = firstNumber.toString() + operation + secondNumber.toString();
      } else if (operation == "x") {
        results = (firstNumber * secondNumber).toString();
        history = firstNumber.toString() + operation + secondNumber.toString();
      }
    } else {
      results = int.parse(textToDisplay + buttonValue).toString();
    }

    setState(() {
      textToDisplay = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: "BCS Flutter Calculator",
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: Text("BCS Flutter Calculator"),
          // backgroundColor: Color(0xFF00886A),
        ),
        body: Container(
            child: Column(
          // To let buttons appear at the bottom
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment(1.0, 1.0),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  history,
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF22E2FF),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment(1.0, 1.0),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  textToDisplay,
                  style: TextStyle(
                    fontSize: 48,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Divider(
              height: 5,
              thickness: 2,
              color: Color(0x790099FF),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: "AC",
                  fillColor: 0x9F02FF9A,
                  textColor: 0xFFFFFFFF,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                    text: "C",
                    fillColor: 0x9F02FF9A,
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: "<",
                    fillColor: 0x9F02FF9A,
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: "/",
                    fillColor: 0xFFf4d160,
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                    text: "9",
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: "8",
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: "7",
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: "x",
                    fillColor: 0xFFf4d160,
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                    text: "6",
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: "5",
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: "4",
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: "-",
                    fillColor: 0xFFf4d160,
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                    text: "3",
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: "2",
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: "1",
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: "+",
                    fillColor: 0xFFf4d160,
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                    text: "+/-",
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: "0",
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: "00",
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick),
                CalculatorButton(
                    text: "=",
                    fillColor: 0xFFf4d160,
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick),
              ],
            ),
            Divider(
              height: 25,
              thickness: 2,
              color: Color(0x790099FF),
            ),
          ],
        )),
        backgroundColor: Color(0xff28527a),
      ),
    ); // MaterialApp
  }
}
