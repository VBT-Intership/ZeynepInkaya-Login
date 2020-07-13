import 'package:flutter/material.dart';
import 'package:flutter_login/login.dart';
import 'package:flutter_login/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      
      home: Login(),
    );
  }
}

