import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  dynamic size,height,width,orientation;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    orientation = MediaQuery.of(context).orientation;
    height = size.height;
    width = size.width;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Response"),
        ),
        body: orientation==Orientation.portrait?Container(
          height: height/2,
          width: width/2,
          color: Colors.red,
        ):Container(
          height: height/2,
          width: width/2,
          color: Colors.green,
        )
      ),
    );
  }
}
