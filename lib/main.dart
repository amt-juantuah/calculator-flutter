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
          title: Text("Calculator"),
          // backgroundColor: Color(0xFF00886A),
        ),
        body: Container(
          child: Column(
            // To let buttons appear at the bottom
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(text: "0"),
                  CalculatorButton(text: "1"),
                  CalculatorButton(text: "2"),
                  CalculatorButton(text: "3"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(text: "0"),
                  CalculatorButton(text: "1"),
                  CalculatorButton(text: "2"),
                  CalculatorButton(text: "3"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(text: "0"),
                  CalculatorButton(text: "1"),
                  CalculatorButton(text: "2"),
                  CalculatorButton(text: "3"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(text: "0"),
                  CalculatorButton(text: "1"),
                  CalculatorButton(text: "2"),
                  CalculatorButton(text: "3"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(text: "0"),
                  CalculatorButton(text: "1"),
                  CalculatorButton(text: "2"),
                  CalculatorButton(text: "3"),
                ],
              ),
              
            ],
            )
          ),
        backgroundColor: Color(0xff28527a),
      ),
    ); // MaterialApp
  }
}