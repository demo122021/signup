import 'package:flutter/material.dart';
import 'package:untitled/screens/signup.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SignupPage(),
    );
  }
}