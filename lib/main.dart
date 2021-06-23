
import 'package:flutter/material.dart';
import 'package:farm_new/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello User !',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Home(title: 'Hello User !'),
    );
  }
}