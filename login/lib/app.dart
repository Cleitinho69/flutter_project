import 'package:flutter/material.dart';
import 'package:login/loginPage.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.deepPurpleAccent),
      home: Loginpage(),
    );
  }
}