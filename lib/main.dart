import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
 
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
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      minimumSize: Size(70, 70),
      backgroundColor: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    );
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
            children: [
              Row(
                children: [
                  Container(
                    child: SizedBox(
                      width: 70,
                      height: 70,
                      child: TextButton(
                        style: flatButtonStyle,
                        onPressed: () {},
                        child: Text(
                          "9",
                          style: TextStyle(color: Colors.white)
                        )
                      ),
                    ),
                  )
                ],
              )
            ],
            )
          ),
        backgroundColor: Color(0xFF000000),
      ),
    ); // MaterialApp
  }
}