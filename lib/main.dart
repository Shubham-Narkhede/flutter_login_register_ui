import 'package:flutter/material.dart';
import 'package:flutter_login_register_ui/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
