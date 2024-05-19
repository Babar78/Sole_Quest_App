// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sole_quest/view/checkout/checkout_screen.dart';
import 'package:sole_quest/view/login/login.dart';
import 'package:sole_quest/view/navigator.dart';
import 'package:sole_quest/view/signup/signup.dart';

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
        fontFamily: 'Quicksand',
      ),
      title: 'SoleQuest',
      home: Login(),
      routes: {
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
        '/navigator': (context) => MainNavigator(),
        '/checkout': (context) => Checkout(),
        // Add other routes here if needed
      },
    );
  }
}
