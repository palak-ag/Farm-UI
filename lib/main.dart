import 'package:farm_ui/pages/signin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'farm_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Hello User !',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SignInPage(),
      // home: Home(title: 'Hello User !'),

      // @override
      // Widget build(BuildContext context) {
      //   return GetMaterialApp(
      //     home: SignInPage(),
    );
  }
}
