import 'package:flutter/material.dart';
import 'package:time_table_generator/models/contructer.dart';
import 'package:time_table_generator/home/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //home: SplashScreen()
      home: Read(),
    );
  }
}