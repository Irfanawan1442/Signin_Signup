import 'package:flutter/material.dart';
import 'package:login/signup.dart';
import 'package:login/login.dart';
import 'package:login/home.dart';
void main() {
  runApp(
    MaterialApp(
      title: 'Fly with Me',
      home: Signup(),
      routes: {
        '/Login': (context) => Login(),
        '/Home': (context) => Home(),
      },
    ),
  );
}