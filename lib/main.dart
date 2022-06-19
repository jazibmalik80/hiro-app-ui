// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hiro_ambulance_ui/Customer/Pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          color: Colors.white,
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Color(0xFF021260),
        ),
        brightness: Brightness.light,
        primaryColor: Color(0xFF021260),
        primaryColorLight: Color(0xFFebecf0),
      ),
      home: HomePage(),
    );
  }
}
