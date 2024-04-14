// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/LoginPage.dart';
import 'package:flutter_application_1/pages/homePage.dart';
import 'package:flutter_application_1/pages/page3.dart';

void main() {
  runApp( MyWidget());
}

class MyWidget extends StatelessWidget {
   MyWidget({super.key});


  @override 
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginPage(),
      routes: {
        '/loginPage' :(contect) => loginPage(),
        '/homePage' :(context) => homePage(),
        '/page3' :(context) => page3(),
      },
    );
  }
}
