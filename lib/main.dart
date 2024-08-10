import 'package:flutter/material.dart';
import 'package:groww/Authtentication/login.dart';
import 'package:groww/stockpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Groww App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Stockpage(),
    );
  }
}

