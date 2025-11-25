import 'package:count/controllers/bringhtnessController.dart';
import 'package:count/pages/home.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: BringhtnessController.instance,
      builder: (BuildContext context, child) {
        return MaterialApp(
          theme: ThemeData(
            brightness: BringhtnessController.instance.isDark
                ? Brightness.dark
                : Brightness.light,
            colorSchemeSeed: Colors.lightBlue,
          ),
          home: HomePage(),
        );
      },
    );
  }
}
